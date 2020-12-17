**Annotation**
------------------------
RNA-Seq data utilized for genome annotation were deposited to the [ENA](https://www.ebi.ac.uk/ena) under the accession PRJEB35304, along with publicly available RNA-seq data from three independent short read Illumina PE datasets: SRR1523521 (PRJNA255988); SRR835869 (PRJNA79601); and SRR2001505 (PRJNA282156). Genomic annotation generated with the Ensembl Gene Annotation pipeline [17]. All transcript models are supported by RNA-seq experimental evidence derived from multiple whitefly life-stages. Gene model layering was supported with protein-to-genome alignment of experimentally verified proteins obtained from closely related Hemiptera: Uniprot (2019) and 570 experimentally verified protein genes from the published genome of *Bemisia tabaci* MEAM1 [18]. The Ensembl Gene Annotation pipeline then implemented transcript consensus filtration to remove unsupported alternate transcript isoform(s). 

Small ncRNAs were obtained using a combination of BLAST and Infernal/RNAfold. Pseudogenes were calculated by examining genes with a large percentage of non-biological introns (introns of <10bp), where the gene was covered in repeats, or where the gene was single exon and evidence of a functional multi-exon paralog was found elsewhere in the genome.

lncRNAs were generated via RNA-seq data where no evidence of protein homology or protein domains could be found in the transcript. 

For a general in-depth overview of the Gene Annotation pipeline see here: [detailed information on the genebuild](http://www.ensembl.org/info/genome/genebuild/2020_03_teleost_clade_gene_annotation.pdf).
