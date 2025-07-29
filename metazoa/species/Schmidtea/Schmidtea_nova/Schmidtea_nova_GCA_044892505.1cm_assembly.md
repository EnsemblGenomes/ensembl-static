**Assembly**
--------

The assembly presented here has been imported from [INSDC](http://www.insdc.org) and is linked to the assembly accession [[GCA\_044892505.1](http://www.ebi.ac.uk/ena/data/view/GCA_044892505.1)].

PacBio Circular consensus sequencing reads were called using pbccs (v6.0.0) and reads with
quality > 0.99 (Q20) were taken forward as “HiFi” reads. To create the initial contig assemblies
from 30x PacBio HiFi reads (SRA: SRR27325391), canu v2.1 was used with parameters:
maxInputCoverage=100 -pacbio-hifi. Next, alternative haplotigs were then removed using
purge-dups (v1.2.3) using default parameters and cutoff as they were correctly estimated by the
program. To initially scaffold the contigs into scaffolds, SALSA v2 (v2.2) was used after mapping
Hi-C reads (SRA: SRR27325343) to the contigs. The VGP Arima mapping pipeline was
followed: https://github.com/VGP/vgp-assembly/tree/master/ pipeline/salsa using bwa-mem
(v0.7.17), samtools (v0.10, v1.11) and Picard (v2.22.6). False joins in the scaffolds were then
broken and missed joins merged manually following the processing of Hi-C reads with pairtools
(v0.3.0) and visualization matrices created with cooler (v0.8.11). Following scaffolding, the
original PacBio subreads were mapped to the chromosomes using pbmm2 (v1.3.0,
https://github.com/ PacificBiosciences/pbmm2) with arguments: --preset SUBREAD -N 1 and
regions +/− 2 kb around each gap were polished using gcpp’s arrow algorithm (v1.9.0). Those
regions in which gaps were closed and polished with all capital nucleotides (gcpp’s internal high
confidence threshold) were then inserted into the assemblies as closed gaps. Lastly, the PacBio
HiFi (CCS reads with a read quality exceeding 0.99) were aligned to the genomes using pbmm2
(v1.3.0) with the arguments --preset CCS -N 1. DeepVariant (v1.2.0,98) was used to detect
variants in the alignments to the assembled sequence. Only the homozygous variants (GT =
1/1) that passed DeepVariant’s internal filter (FILTER = PASS) were retained using bcftools
view (v1.12) and htslib (v1.11). The genome was then polished by creating a consensus
sequence based on this filtered VCF file, as detailed in the VGP assembly pipeline
(https://github.com/VGP/vgp-assembly/tree/ master/pipeline/freebayes-polish).


The assembly was produced by ["Max Planck Institute for Multidisciplinary Sciences"](https://www.mpinat.mpg.de/rink)
and reported in [3].


The total length of the assembly is 1251382582 bp contained within 283 scaffolds.
The scaffold N50 value is 455729997, the scaffold L50 value is 2.
The GC% content of the assembly is 28.0%.
