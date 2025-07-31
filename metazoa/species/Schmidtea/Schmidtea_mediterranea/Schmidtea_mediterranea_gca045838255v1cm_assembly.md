**Assembly**
--------

The assembly presented here has been imported from [INSDC](http://www.insdc.org) and is linked to the assembly accession [[GCA\_045838255.1](http://www.ebi.ac.uk/ena/data/view/GCA_045838255.1)].

PacBio Circular consensus sequencing reads were called using pbccs (v6.0.0) and reads with
quality > 0.99 (Q20) were taken forward as “HiFi” reads. 44x PacBio HiFi reads
(SRA:SRR27325393) and 1 billion Hi-C (SRA: SRR27325345, SRR27325347) reads were used
to assemble phased contigs with hifiasm (v0.7). Hi-C reads with mapping quality >=10 were
further utilized to scaffold the contigs from each haplotype by SALSA (v2) following the hic-
pipeline (https://github.com/esrice/hic-pipeline). Four chromosome-level scaffolds were obtained
in both haplotypes after scaffolding, consistent with the karyology of the species. The remaining
scaffolding errors were manually curated based on the interaction frequency indicated by the
intensity of Hi-C signals.

The assembly was produced by ["Max Planck Institute for Multidisciplinary Sciences"](https://www.mpinat.mpg.de/rink)
and reported in [8].

The total length of the assembly is 819865861 bp contained within 432 scaffolds.
The scaffold N50 value is 268961546, the scaffold L50 value is 2.
The GC% content of the assembly is 29.5%.
