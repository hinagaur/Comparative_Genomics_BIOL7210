#!/bin/bash

mamba create -n amrfinder ncbi-amrfinderplus -y

# Activate the conda environment
mamba activate amrfinder

cd assemblies
# Loop through all .fa files in the current directory
for file in $(ls *.fa); do
    echo "Running AMRFinderPlus on $file..."
    # Corrected command with proper output flag
    amrfinder -n "$file" --plus --output "${file}_amrfinder_results.tsv"
    echo "Completed $file"
done

echo "All files processed."