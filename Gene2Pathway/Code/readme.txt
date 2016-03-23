# Name: readme.txt
# Author: Arezoo Movaghar (amovaghar@wisc.edu, muvaghar@gmail.com)
# Descriptoin: This file contains a brif description about 3 scripts(pathway_2_gene_map.R, gene_2_pathway_map.R, and read_maps.R) and their output files.
#

gene_2_pathway_map.R and pathway_2_gene_map.R

The aim of these scripts is creating maps of genes and pathways. 
The output of gene_2_pathway_map.R script will be a .txt file, in which each line has the following format:
Gene_ID, list of pathway_IDs

This is a reference file and having a gene_ID we can extract all pathways that this specific gene is part of them.


The output of pathway_2_gene_map.R script will be a .txt file, in which each line has the following format:
pathway_ID, list of gene_IDs 

This is a reference file and having a pathway we can extract all of the genes which are associated in  this specific pathway.


In order to use the outfile you can use read_maps scripts.
