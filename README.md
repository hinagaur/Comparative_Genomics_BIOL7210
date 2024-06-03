# Comparative Genomics 

## Objective

In our comparative studies of the 28 assigned samples, we conducted genomic comparison and phylogenetics analysis to infer relatedness. Through the constructed phylogenetic tree, we differentiated the samples involved in the outbreak from the outliers, gaining insights into their relatedness. Further analysis of the tree revealed distinct virulence and antibiotic resistance profiles among the pathogens. Our literature survey on outbreak response highlighted effective containment strategies such as rapid identification through whole-genome sequencing, targeted isolation protocols, and comprehensive contact tracing. Additionally, we explored current treatment options, emphasizing the importance of tailored antibiotic regimens based on resistance profiles for effective management.

We utilized the following tools to achieve this objective:

### OrthoFinder
OrthoFinder is a fast, accurate and comprehensive platform for comparative genomics. It finds orthogroups and orthologs, infers rooted  gene trees for all orthogroups and identifies all of the gene duplication events in those gene trees. It also infers a rooted species tree for the species being analysed and maps the gene duplication events from the gene trees to branches in the species tree. <br>

### Skmer
Skmer is a fast tool for estimating distances between genomes from low-coverage sequencing reads (genome-skims), without needing 
any assembly or alignment step. <br>

### Parsnp

Parsnp was designed to align the core genome of hundreds to thousands of bacterial genomes within a few minutes to few hours.
Input can be both draft assemblies and finished genomes, and output includes variant (SNP) calls, core genome phylogeny and multi-alignments. <br>

### Snippy
Snippy finds SNPs between a haploid reference genome and your NGS sequence reads. It will find both substitutions (snps) and insertions/deletions (indels). It will use as many CPUs as you can give it on a single computer (tested to 64 cores). It is designed 
with speed in mind, and produces a consistent set of output files in a single folder. It can then take a set of Snippy results using 
the same reference and generate a core SNP alignment (and ultimately a phylogenomic tree). <br>

### Abricate

Mass screening of contigs for antimicrobial resistance or virulence genes. It comes bundled with multiple databases: NCBI, CARD, 
ARG-ANNOT, Resfinder, MEGARES, EcOH, PlasmidFinder, Ecoli_VF and VFDB. <br>

### AMRFinder

This software and the accompanying database are designed to find acquired antimicrobial resistance genes and point mutations 
in protein and/or assembled nucleotide sequences. <br>

### Pipeline
`./pipeline.sh` 

### Recommendations to CDC <br>


#### Species Identified: <br>
All 28 samples from CDC surveillance and outbreak investigations were identified as _Elizabethkingia anophelis_. <br>

#### Background: <br>
   - _E. anophelis_ is a rare Gram-negative bacteria causing illness in humans. <br>
   - It is not a normal part of human microflora and uncommon in the respiratory tract. <br>
   - Previous outbreaks were linked to healthcare settings, but sporadic community cases and one case of mother-to-infant transmission exist. <br>
   - Primarily affects older adults with serious health conditions. <br>

#### Symptoms: <br>
Symptoms include fever, shortness of breath, chills, or cellulitis. Laboratory testing is needed for confirmation. <br>

#### Diagnosis: <br>
   - Culture from sterile sites, mainly blood samples, is needed. <br>
   - Labs may misclassify _E. anophelis_ as _Flavobacterium_ or _Chryseobacterium_; advise reporting such findings to state health departments. <br>
   - Testing various sources like healthcare products and water sources hasn't found the source yet. <br>

#### Treatment: <br>
   - _E. anophelis_ is resistant to multiple antimicrobial agents. <br>
   - It contains genetic factors associated with resistance, like beta-lactamases and efflux systems. <br>
   - Strains from previous outbreaks are susceptible to fluoroquinolones, rifampin, minocycline, and trimethoprim/sulfamethoxazole. <br>
   - Recommend combination therapy over monotherapy, tailored based on antimicrobial susceptibility testing for optimal outcomes. <br>

