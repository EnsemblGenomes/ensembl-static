**Annotation**
----------

Ensembl Plants displays genes imported from a community GFF3 file provided by Niab linked to the assembly with accession [GCA_951799155.1](https://www.ncbi.nlm.nih.gov/assembly/GCA_951799155.1).
Gene models for the Alchemy genome were transferred from the Triticum aestivum Chinese Spring reference annotation (IWGSC RefSeq v1.1; Alaux et al., 2018; IWGSC, 2018) using Liftoff (Shumate & Salzberg, 2021). The annotations were mapped to Alchemy pseudomolecules, including unanchored contigs. The annotation process used Liftoff with the following parameters: -flank 0.05 -exclude_partial -copies -polish -chroms -unplaced with minimap2 (Li, 2018) configured as the aligner using: -mm2_options "-a --end-bonus 5 --eqx -N 50 -p 0.5 -I 20G"

Post-processing of the resulting GFF files involved filtering out duplicate gene annotations with identical coordinates. In such cases, the best-supported model was retained based on coverage and sequence identity.

Genomic annotation was provided along with initial assembly submission by "Niab".

Small RNA features, protein features, BLAST hits and cross-references have been computed by Ensembl Plants.
