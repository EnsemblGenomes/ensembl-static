**Annotation**
----------

Genomic annotation was provided by ["Max Planck Institute for Multidisciplinary Sciences"](https://www.mpinat.mpg.de/rink).

The genome was annotated using a hybrid genome-guided transcriptome approach. Extensive
RNA-seq data both from the sexual laboratory strain (S2F18, internal ID: GOE00500) and the
asexual laboratory strain (CIW4, internal ID: GOE00071) were used. Total RNA was extracted
from snap-frozen planarian tissue using the protocol described in [6] and [8].

RNA-seq data for the sexual strain included:
 - Nanopore direct RNA-seq from pooled whole animals sampled at various feeding and
regeneration stages (SRR27325410)
 - Nanopore cDNA RNA-seq from two regeneration series (SRR27325336,
SRR27325337), whole animals (SRR27325339), and freshly cut heads and tails
(SRR27325338)
 - Illumina RNA-seq covering various life stages and regeneration stages (SRX2700685; [6])

For the asexual strain this included:
 - Nanopore direct RNA-seq of heads & tails (SRR27325406)
 - Nanopore cDNA RNA-seq of heads & tails (SRR27325407, SRR27325409), a
regeneration series (SRR27325408), whole animals (SRR27325405), and FACS-sorted
stem cells (SRR27325404)
 - Illumina RNA-seq of wild-type whole animals (SRR27325340, SRR27325341)
 - 3P-seq (SRP070102; [9])

After read quality trimming, deduplication, filtering, and mapping (using HISAT2 and minimap2
for short and long reads, respectively), a draft transcriptome was generated using Stringtie2
then it was further refined using FLAIR and a collection of custom scripts to filter high-
confidence isoforms. For details of the procedure and a step-by-step guide to the genome
annotation analysis, see the Supporting Information of [8].

Small RNA features, protein features, BLAST hits and cross-references have been
computed by [metazoa](https://metazoa.ensembl.org/info/genome/annotation/index.html).
