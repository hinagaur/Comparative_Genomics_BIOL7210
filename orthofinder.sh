#!/bin/bash

mamba create -n orf orthofinder -y
mamba activate orf

#orthofinder
orthofinder -d -f assemblies/
#OrthoFinder assigned 796 genes (64.2% of total) to 58 orthogroups. Fifty percent of all genes were in orthogroups with 21 or more genes (G50 was 21) 
#and were contained in the largest 10 orthogroups (O50 was 10). There were 5 orthogroups with all species present and 0 of these consisted entirely of single-copy genes.
