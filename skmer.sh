#!/bin/bash

mamba create -n skmer 
mamba activate skmer
mamba install skmer bbmap fastme -y

cd input_fastqs
ls -lh

#skmer takes one uncompressed fq or fa file, uncompressiong and merging PE files using bbmerge
gunzip *.gz
#create folder for each sample and move the PE files into respective folders
for file in $(ls); do mkdir ${file%%_}; done
for file in $(ls --hide=A*q); do mv -v  "$file"_* $file/; done
for file in $(ls); 
    do 
        bbmerge.sh in1=$file/"$file"_r1_trimmed.fq in2=$file/"$file"_r2_trimmed.fq out=../merged_fastqs/$file.fq outu1=$file/"$file"_1_unmerged.fq outu2=$file/"$file"_2_unmerged.fq; 
    done

#using skmer
#to obtain main estimate distance matrix before subsampling
skmer reference merged_fastqs -p 8 -l skmer_library -t -o dist_matrix.txt

#convert distance matrix into PHYLIP format
bash tsv_to_phymat.sh dist_matrix_cor_.txt dist_matrix_phylip.txt

#create tree
fastme -i dist_matrix_phylip.txt -o phylogeny_tree.tre

#gives tree in newick format
cat phylogeny_tree.tre

#visualize tree
# mamba activate harvestsuite
# figtree phylogeny_tree.tre
