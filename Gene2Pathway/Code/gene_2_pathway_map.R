# Name:  gene_2_pathway_map.R
# Author: Arezoo Movaghar (amovaghar@wisc.edu)
# Descriptoin: Creates a map of genes and pathways. Each 
# line would be consisted of gene_ID and list of pathways that  this specific gene is part of them.
# Each line of the file would be like: gene_ID, list of pathway_IDs
# Note: read_maps.R is a sample function to read the output file.
#


# load libraries
library(KEGG.db)

gene_2_pathway_map <-function (){
	
	# make sure that the output dir exists
	kOutputDir <- "~/Desktop/"

	unlink(kOutputDir)
	dir.create(kOutputDir, showWarnings = FALSE)


	s= as.data.frame(KEGGEXTID2PATHID)
	
	#Find pathways associated with specific genes
	
	pofg = sapply(unique(s$gene_or_orf_id), function(x) {  s$pathway_id[s$gene_or_orf_id%in%x]   } )

	# write it to a file
	
	lapply(names(pofg), function(x) { write(paste(x, paste(unlist(pofg[x]), collapse = " "), collapse = " "), "~/Desktop/Gene_2_Pathway.txt", append=TRUE, ncolumns=2)} )

}
