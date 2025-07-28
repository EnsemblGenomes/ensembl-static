**Annotation**
----------

Genomic annotation was produced by ["Max Planck Institute for Multidisciplinary Sciences"](https://www.mpinat.mpg.de/rink).

The genome was annotated using a hybrid genome-guided transcriptome approach. As input
RNAseq data, we combined Nanopore direct RNA-seq of pooled whole animals at various
feeding stages and regeneration stages (SRA: SRR27325397), Nanopore cDNA RNA-seq of
whole animals (SRA: SRR27325399) and a regeneration series (SRA: SRR27325398). Total
RNA was extracted from snap-frozen planarian tissue using the protocol described in [1,3].

After read quality trimming, deduplication, filtering, and mapping (using HISAT2 and minimap2
for short and long reads, respectively), a draft transcriptome was generated using Stringtie2
then it was further refined using FLAIR and a collection of custom scripts to filter high-
confidence isoforms. For details of the procedure and a step-by-step guide to the genome
annotation analysis, see the Supporting Information of [3].

Small RNA features, protein features, BLAST hits and cross-references have been
computed by [metazoa](https://metazoa.ensembl.org/info/genome/annotation/index.html).
