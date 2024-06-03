#!/bin/bash

# create snippy conda environment
conda create -n snippy -c conda-forge -c bioconda -c defaults snippy iqtree figtree -y
conda activate snippy

mkdir snippy
cd input_fastqs

for file in $(ls); do
  snippy \
   --cpus 4 \
   --outdir snippy/$file \
   --ref ../assemblies/A019380.fna \
   --R1 $file/"$file"_r1_trimmed.fq.gz \
   --R2 $file/"$file"_r2_trimmed.fq.gz
done

# identify core snps
snippy-core \        
 --prefix core \
 SRR* \   
 --ref assemblies/A019380.fna

# create tree
 iqtree \
 -nt AUTO \
 -st DNA \
 -s core.aln

 cat core.aln.treefile

# view tree
# figtree *.treefile