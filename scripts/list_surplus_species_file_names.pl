#!/usr/bin/env perl
# Copyright [2020-2025] EMBL-European Bioinformatics Institute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

=head1 NAME

list_surplus_species_file_names.pl

=head1 DESCRIPTION

For a given division and release, this script
lists species files with unexpected names.

=head1 EXAMPLE

    perl list_surplus_species_file_names.pl \
        --host hostname \
        --port 1234 \
        --user username \
        --dbname dbname \
        --division metazoa \
        --release 115-62

=head1 OPTIONS

=over

=item B<[--help]>

Prints help message and exits.

=item B<[--host STR]>

Metadata database host.

=item B<[--port INT]>

Metadata database port.

=item B<[--user STR]>

Metadata database username.

=item B<[--pass STR]>

Metadata database password.

=item B<[--dbname STR]>

Metadata database name.

=item B<[--division STR]>

Ensembl division.

=item B<[--release STR]>

Ensembl release, specified as an Ensembl version and an NV release number, separated by a hyphen (e.g. '115-62').

=back

=cut


use strict;
use warnings;

use feature 'say';

use Cwd qw(realpath);
use File::Find;
use File::Spec::Functions;
use FindBin '$Bin';
use Getopt::Long;
use Pod::Usage;

use Bio::EnsEMBL::MetaData::DBSQL::MetaDataDBAdaptor;


my %to_division_name = (
  'EnsemblBacteria' => 'EnsemblBacteria',
  'EnsemblFungi'    => 'EnsemblFungi',
  'EnsemblMetazoa'  => 'EnsemblMetazoa',
  'EnsemblPlants'   => 'EnsemblPlants',
  'EnsemblProtists' => 'EnsemblProtists',
  'bacteria'        => 'EnsemblBacteria',
  'fungi'           => 'EnsemblFungi',
  'metazoa'         => 'EnsemblMetazoa',
  'plants'          => 'EnsemblPlants',
  'protists'        => 'EnsemblProtists',
);

my %to_plain_division = (
  'EnsemblBacteria' => 'bacteria',
  'EnsemblFungi'    => 'fungi',
  'EnsemblMetazoa'  => 'metazoa',
  'EnsemblPlants'   => 'plants',
  'EnsemblProtists' => 'protists',
);

my $help;
my $host;
my $port;
my $user;
my $pass;
my $dbname;
my $division;
my $release;

GetOptions(
  'help|?'     => \$help,
  'host=s'     => \$host,
  'port=i'     => \$port,
  'user=s'     => \$user,
  'pass=s'     => \$pass,
  'dbname=s'   => \$dbname,
  'division=s' => \$division,
  'release=s'  => \$release,
);
pod2usage(-exitvalue => 0, -verbose => 1) if $help;
pod2usage(-verbose => 1) if !$host or !$port or !$user or !$dbname;


if (exists $to_division_name{$division}) {
  $division = $to_division_name{$division};
} else {
  die("Please provide a valid Ensembl NV division name.\n");
}

my $eg_release;
my $ensembl_release;
if ($release =~ /^(?<ensembl_release>[0-9]+)-(?<eg_release>[0-9]+)$/) {
  $ensembl_release = $+{'ensembl_release'};
  $eg_release = $+{'eg_release'};
} else {
  die("Please provide an Ensembl version and an NV release number, separated by a hyphen, e.g. '--release=115-62'.\n");
}

my $metadata_dba = Bio::EnsEMBL::MetaData::DBSQL::MetaDataDBAdaptor->new(
  -host    => $host,
  -port    => $port,
  -user    => $user,
  -pass    => $pass,
  -dbname  => $dbname,
  -species => 'multi',
  -group   => 'metadata',
);

if (!defined $metadata_dba) {
  die("Unable to connect to metadata database with given parameters\n");
  pod2usage(-verbose => 1);
}

my $genome_info_dba = $metadata_dba->get_GenomeInfoAdaptor();
$genome_info_dba->set_ensembl_genomes_release($eg_release);
$genome_info_dba->set_ensembl_release($ensembl_release);

my $genomes = $genome_info_dba->fetch_all_by_division($division);

my @doc_suffixes = qw(about.md assembly.md annotation.md references.md other.md regulation.md variation.md acknowledgement.html);
my @img_suffixes = qw(.jpg .png);

my %exp_doc_file_names;
my %exp_img_file_names = ( 'default.png' => 1 );
foreach my $genome (@{$genomes}) {
  my $genome_url = $genome->url_name;

  foreach my $doc_suffix (@doc_suffixes) {
    $exp_doc_file_names{$genome_url . '_' . $doc_suffix} = 1;
  }

  foreach my $img_suffix (@img_suffixes) {
    $exp_img_file_names{$genome_url . $img_suffix} = 1;
  }
}

my $division_dir = catdir($Bin, '..', $to_plain_division{$division});
my $species_img_dir = catdir($division_dir, 'images', 'species');
my $species_doc_dir =  catdir($division_dir, 'species');

my @surplus_file_paths;
{
  local $File::Find::dont_use_nlink = 1;  # https://perldoc.perl.org/File::Find#$dont_use_nlink

  find(
    sub { push @surplus_file_paths, realpath($File::Find::name) if -f $File::Find::name && /\.(html|md)$/ && !exists $exp_doc_file_names{$_} },
    $species_doc_dir,
  );
  find(
    sub { push @surplus_file_paths, realpath($File::Find::name) if -f $File::Find::name && /\.(jpg|png)$/ && !exists $exp_img_file_names{$_} },
    $species_img_dir,
  );
}

foreach my $surplus_file (sort @surplus_file_paths) {
  say($surplus_file);
}
