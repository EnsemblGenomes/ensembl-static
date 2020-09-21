
## What's New in Release 49

Release 49 of Ensembl Bacteria had a major update of  all of its species. All the bacterial genomes were freshly reloaded from ENA. To help with scalability,we filtered redundant proteomes following UniProt criteria, reducing our total number of bacterial genomes to 31,332. Ensembl Bacteria has an updated pan-taxonomic compara (which includes key bacterial species) and a fresh set of flat files on the FTP server. 

- New and updated genomes

  - A total of 31,332 bacterial and archaeal genomes. This includes 22088 new genomes including _Synergistetes bacterium_, a bacteria present in the human gastrointestinal microbiota which are typically absent from healthy individuals in the developed world [1](https://www.nature.com/articles/s41587-018-0009-7.epdf?sharing_token=7FIxZgQgAlr2mseOhIOyUNRgN0jAjWel9jnR3ZoTv0OsTb2ghmo7qWnL6m4Zl59uD-yKumxOk_Dsgwc0arVpRxMxsZ_SY73kWdu229Z8pYpBDTBPnNNIOCz6FwwjR3HKB6FBGe1s8lY3btNi1G__zCKXPC5nm_Rio_kcIlS1Y4U%3D) and 16 new strains of  _Prevotella copri_, intestinal anaerobic bacteria correlated with the development of rheumatoid arthritis [2](https://academic.oup.com/nar/article/42/D1/D581/1049866).

- Renamed genomes

  - 567 genomes have been renamed in the NCBI taxonomy database since our last update. In particular, 6 species that used to be in pan-taxonomic compara have been renamed

- Removed genomes

  - 34804 genomes have been removed (mostly due to them being marked as redundant by [UniProt](https://www.uniprot.org)). In particular, 15 species that used to be in pan-taxonomic compara are now removed

- Updated data

  - Annotation of pathogen-host interaction data ([PHI-base](http://www.phi-base.org/index.jsp) version
   2019-09-16)
  - Alignments to [Rfam](https://rfam.xfam.org) covariance models (Rfam 12.2) visible in new track
   (‘Rfam models’)
  - Updated protein features for all species using [InterProScan](https://www.ebi.ac.uk/interpro/search/sequence/) with
   version 77.0 of InterPro.
  - Bacterial species names used within our    production processes now
   have the assembly accession as a suffix    (e.g.
   streptococcus_pneumoniae_tigr4 is now named   
   streptococcus_pneumoniae_tigr4_gca_000006885). Please amend any stored bookmarks for species pages.
