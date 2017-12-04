# Immgen-cell-type-prediction
#Reference: Zemmour et al. 

This code can be used to compare each single cell transcriptome to the Immgen dataset (www.immgen.org) and calculates the likelihood for each single cell to be any of the Immgen cell types. The Immgen matrix of gene expression is used to provide prior probabilities (probability to express gene i in cell type j = pij ) and calculate for each single cell C the likelihood to be of cell type j (Lcj) (multinomial model). Log posterior probabilities were derived by normalizing so that they sum to 1 for each single cell.

<a href="http://www.codecogs.com/eqnedit.php?latex=L_{cj}&space;=&space;\sum_{i}&space;c_{i}&space;*&space;log(p_{ij})" target="_blank"><img src="http://latex.codecogs.com/gif.latex?L_{cj}&space;=&space;\sum_{i}&space;c_{i}&space;*&space;log(p_{ij})" title="L_{cj} = \sum_{i} c_{i} * log(p_{ij})" /></a>

