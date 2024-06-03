#!/bin/bash

#run AMRFinderPlus to find antimicrobial resistance and other genes in nucleotide sequences
./amrfinder.sh

#run abricate for mass screening of contigs for antimicrobial resistance or virulence genes
./abricate.sh

#run different tools to generate phylogenetic trees
#run orthofinder
./orthofinder.sh

#run snippy
./snippy.sh

#run parsnp
./parsnp.sh

#run skmer
./skmer.sh



