# Name:  pathID2Name.R
# Author: Arezoo Movaghar (amovaghar@wisc.edu, muvaghar@gmail.com)
# Descriptoin: This script maps a list of pathway IDs to the names of these pathway. 
# Note: It works for pathway IDs with the following format: "xxx#..#"
# Note: Use read_map.R script to read the output file. 
#



# Sample code to read map file 
 
pathID2Name <-function(){
	    
	# read input list of pathwayIDs    
    kInputDir <- "~/Desktop"

	input="~/Desktop/hsa_Pathway_2_Gene.txt"
	
	sss = read.csv(input, stringsAsFactors = F, sep = " ", header = F)
	
	# ignore the first 3 character of pathway IDs.
	s=lapply(sss[,1],function(x){substring(x,4,)})	
	
	xx <- as.list(KEGGPATHID2NAME)
	
	id2name = sapply(paste(s), function(x) { xx[x] }, USE.NAMES = F, simplify = "array" )
	
	#write to file
	lapply(names(id2name), function(x) { write(paste(paste("hsa",x,sep=''), paste(unlist(id2name[x]), collapse = " "), collapse = " "), "~/Desktop/hsa_PathID2Name.txt", append=TRUE, ncolumns=2)} )

	return(id2name)
	
}	
	
