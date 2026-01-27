As part of the wheat genome analysis, we have aligned a set of
identified *Triticum aestivum* gene sequences and homoeologous SNPs
(SNPs between the component A, B, and D genomes of wheat) against the
*Brachypodium distachyon* and barley (*Hordeum vulgare*) genomes \[1\].\
Currently, the size and complexity of the wheat genome precludes a
chromosome-scale assembly. However, significant sequences resources have
been used to produce a gene-space assembly, included here in the
syntenic context of *brachypodium distachyon*, a model cereal and pooid
relative of wheat, as well as of barley. Sequences of diploid progenitor
and ancestral species permitted homoeologous SNPs to be classified into
two groups, 1) SNPs that differ between the A and D genomes (where the B
genome is unknown) and, 2) SNPs that are the same between the A and D
genomes, but differ in B.

The wheat gene alignments and the projected wheat SNPs are available on
the Location view of the *Brachypodium distachyon* and *Hordeum vulgare*
genomes, as additional tracks under the \"Wheat SNPs and alignments\"
section of the \"Configure This page\" menu. [Click here for a
*Brachypodium*
example](https://test.plants.ensembl.org/Brachypodium_distachyon/Location/View?db=core;r=5:2580560-2583709;contigviewbottom=Lastz_Wheat_A_subsequences_alignments=normal,Lastz_Wheat_B_subsequences_alignments=normal,Lastz_Wheat_D_subsequences_alignments=normal,Lastz_Wheat_X_subsequences_alignments=normal,simple_core_wheat_snp_a=normal,simple_core_wheat_snp_b=normal "Example wheat gene alignments and homoeologous SNPs").
[Click here for a barley
example](https://test.plants.ensembl.org/Hordeum_vulgare/Location/View?db=core;r=1:279279843-279283843;contigviewbottom=Lastz_Wheat_A_subsequences_alignments=normal,Lastz_Wheat_B_subsequences_alignments=normal,Lastz_Wheat_D_subsequences_alignments=normal,Lastz_Wheat_X_subsequences_alignments=normal,simple_core_wheat_snp_a=normal,simple_core_wheat_snp_b=normal).

Wheat RNA-Seq, EST and Unigene datasets have also been aligned:

-   454 RNA-seq data, from the study,
    [ERP001415](https://www.ebi.ac.uk/ena/data/view/ERP001415), were
    aligned using
    [GMAP](https://www.molecularevolution.org/software/genomics/gmap).
    [Click here for a *Brachypodium*
    example](https://test.plants.ensembl.org/Brachypodium_distachyon/Location/View?db=core;r=1:21899572-21905500;contigviewbottom=Gmap_Wheat_ERR125556=normal,Gmap_Wheat_ERR125557=normal).
    [Click here for a barley
    example](https://test.plants.ensembl.org/Hordeum_vulgare/Location/View?db=core;r=1:279279843-279283843;contigviewbottom=Gmap_Wheat_ERR125556=normal,Gmap_Wheat_ERR125557=normal).
-   All publically available EST data in ENA were aligned using
    [Exonerate](https://www.ebi.ac.uk/%7Eguy/exonerate/), following the
    standard Ensembl pipeline. [Click here for a *Brachypodium*
    example](https://test.plants.ensembl.org/Brachypodium_distachyon/Location/View?db=core;r=1:21899572-21905500;contigviewbottom=dna_align_otherfeatures_wheat_est_exonerate=normal).
    [Click here for a barley
    example](https://test.plants.ensembl.org/Hordeum_vulgare/Location/View?db=core;r=1:279279843-279283843;contigviewbottom=dna_align_otherfeatures_wheat_est_exonerate=normal).
-   Unigene cluster sequence data were aligned using
    [Exonerate](https://www.ebi.ac.uk/%7Eguy/exonerate/), following the
    standard Ensembl pipeline. [Click here for *Brachypodium*
    example](https://test.plants.ensembl.org/Brachypodium_distachyon/Location/View?db=core;r=1:21899572-21905500;contigviewbottom=dna_align_otherfeatures_wheat_unigene_exonerate=normal).
    [Click here for a barley
    example](https://test.plants.ensembl.org/Hordeum_vulgare/Location/View?db=core;r=1:279279843-279283843;contigviewbottom=dna_align_otherfeatures_wheat_unigene_exonerate=normal).

These data will also be aligned to the IWGSC chromosome survey sequences
in the next release (release 21).

Wheat sequence search
---------------------

The [wheat sequence search](/Triticum_aestivum/Info/WheatSearch) allows
you to find alignments between your favourite genes and all the publicly
available bread wheat genome sequences. Wherever possible the results
are placed in the syntenic context of *[Hordeum
vulgare](https://test.plants.ensembl.org/Hordeum_vulgare "Hordeum vulgare genome in Ensembl Plants")*
and *[Brachypodium
distachyon](https://test.plants.ensembl.org/Brachypodium_distachyon "Brachypodium distachyon genome in Ensembl Plants")*.

Search is performed via the ENA search service, and currently includes:

-   The [5x 454 whole genome
    assembly](https://europepmc.org/abstract/MED/23192148 "Analysis of the bread wheat genome using whole-genome shotgun sequencing"),
-   \~1.3 million [wheat EST
    sequences](https://www.ebi.ac.uk/ena/data/warehouse/search?query=%22dataclass=%22EST%22%20AND%20tax_eq%284565%29%22&domain=sequence),
    and
-   \~57,000 [wheat Unigene cluster
    sequences](https://www.ncbi.nlm.nih.gov/unigene/?term=txid4565%5BOrganism%3Anoexp%5D).

Links
-----

-   [International Wheat Genome Sequencing Consortium
    (IWGSC)](https://www.wheatgenome.org/)
-   [URGI Wheat Portal](https://wheat-urgi.versailles.inra.fr/)
-   [MIPS Wheat Genome
    Database](https://mips.helmholtz-muenchen.de/plant/wheat/uk454survey/index.jsp)
-   [Triticeae-CAP](https://maswheat.ucdavis.edu/Transcriptome/)
-   ENA study [ERP000319](https://www.ebi.ac.uk/ena/data/view/ERP000319):
    454 pyrosequencing of the *Triticum aestivum* (bread wheat) genome
    to 5X coverage
-   ENA study [ERP001415](https://www.ebi.ac.uk/ena/data/view/ERP001415):
    454 sequencing of *Triticum aestivum* (bread wheat) cv. Chinese
    spring cDNA samples from a pool of tissues, from plants under
    drought stress and from circadian-sampled leaves
-   *Triticum aestivum* ESTs at
    [ENA](https://www.ebi.ac.uk/ena/data/warehouse/search?query=%22dataclass=%22EST%22%20AND%20tax_eq%284565%29%22&domain=sequence)
-   *Triticum aestivum* Unigene cluster sequences at
    [NCBI](https://www.ncbi.nlm.nih.gov/unigene/?term=txid4565%5BOrganism%3Anoexp%5D)
