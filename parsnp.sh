#!/bin/bash

# Creating a conda environment withparsnp installed in it
mamba create -n parsnp_env -c bioconda parsnp -y

parsnp -d ./assemblies -r ! -o parsnp_outdir -p 4

cat parsnp.tree