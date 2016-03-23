# Name:  read_maps.R
# Author: Arezoo Movaghar (amovaghar@wisc.edu, muvaghar@gmail.com)
# Descriptoin: It is a sample function to read the output files of gene_2_pathway_map() or pathway_2_gene_map 
#

# Sample code to read map file 
 
read_maps<- function() {
    
    kInputDir <- "~/Desktop"

	input="map.txt"
		
	sss = head(read.csv(input, stringsAsFactors = F, sep = " ", header = F))
      pp = sapply(sss[,1], function(x) { t = sss[match(x, sss[,1]), -1]; t[!is.na(t)] } )
	
}	
	
