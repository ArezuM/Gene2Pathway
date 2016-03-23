# In his name
# Name: readme.txt
# Author: Arezoo Movaghar (amovaghar@wisc.edu, muvaghar@gmail.com)
# Descriptoin: This file contains a brif description about 4 scripts(hsa_pathway_2_gene_map.R, hsa_gene_2_pathway_map.R, hsa_PathID2Name, and read_maps.R) and their output files.
# Persepolis Group - University of Wisconsin-Madison	
#

hsa_gene_2_pathway_map.R and hsa_pathway_2_gene_map.R

The aim of these scripts is creating maps of genes and pathways of human species association.  
The output of hsa_gene_2_pathway_map.R script will be a .txt file, in which each line has the following format:
Gene_ID, list of pathway_IDs

This is a reference file and having a gene_ID we can extract all pathways that this specific gene is part of them.


The output of hsa_pathway_2_gene_map.R script will be a .txt file, in which each line has the following format:
pathway_ID, list of gene_IDs 

This is a reference file and having a pathway we can extract all of the genes which are associated in this specific pathway.

hsa_PathID2Name convert human species association pathway IDs to the name of these pathways. 

In order to use the output file you can use read_maps scripts.
