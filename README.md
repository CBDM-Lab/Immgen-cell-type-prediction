# Immgen-cell-type-prediction
#Reference: Zemmour et al. 

This code can be used to compare each single cell transcriptome to the Immgen dataset (www.immgen.org) and calculates the likelihood for each single cell to be any of the Immgen cell types. The Immgen matrix of gene expression is used to provide prior probabilities (probability to express gene i in cell type j = pij ) and calculate for each single cell C the likelihood to be of cell type j (Lcj) (multinomial model). Log posterior probabilities were derived by normalizing so that they sum to 1 for each single cell.

$L_{cj} = \sum_{i} c_{i} * log(p_{ij})$

