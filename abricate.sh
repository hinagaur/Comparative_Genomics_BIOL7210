#!/bin/bash

mamba create -n abricate_env python=3
mamba activate abricate_env
mamba install -c bioconda abricate

cd assemblies/

abricate --setupdb

abricate --db card *.{fna,fasta} > abricate_output_group4_card.tsv 
abricate --db resfinder *.{fna,fasta} > abricate_output_group4_resfinder.tsv 
abricate --db vfdb *.{fna,fasta} > abricate_output_group4_vfdb.tsv 
abricate --db megares *.{fna,fasta} > abricate_output_group4_megares.tsv 
abricate --db argannot *.{fna,fasta} > abricate_output_group4_argannot.tsv 

mamba deactivate