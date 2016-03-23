
# Name:  pathway_2_gene_map.R
# Author: Arezoo Movaghar (amovaghar@wisc.edu)
# Descriptoin: Creates a map of genes and pathways. Each 
# line would be consisted of pathway ID and list of genes which are associated in this specific pathway.
# Each line of the file would be like: pathway_ID, list of gene_IDs 
# Note: read_maps.R is a sample function to read the output file.
#


# load libraries
library(KEGG.db)


pathway_2_gene_map <- function() {

	# make sure that the output dir exists
	kOutputDir <- "~/Desktop" # example

	unlink(kOutputDir)
	dir.create(kOutputDir, showWarnings = FALSE)
	
	s= as.data.frame(KEGGEXTID2PATHID)

	#Find Genes associated with specific pathways
	
	gofp = sapply(unique(s$pathway_id), function(x) {  s$gene_or_orf_id[s$pathway_id%in% x]   } )


	# write it to a file

	lapply(names(gofp), function(x) { write(paste(x, paste(unlist(gofp[x]), collapse = " "), collapse = " "), "~/Desktop/Pathway_2_Gene.txt", append=TRUE, ncolumns=2)} )



}