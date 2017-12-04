# Immgen-cell-type-prediction
#Reference: Zemmour et al. 

This code can be used to compare each single cell transcriptome to the Immgen dataset (www.immgen.org) and calculates the likelihood for each single cell to be any of the Immgen cell types. The Immgen matrix of gene expression is used to provide prior probabilities (probability to express gene i in cell type j = pij ) and calculate for each single cell C the likelihood to be of cell type j (Lcj) (multinomial model). Log posterior probabilities were derived by normalizing so that they sum to 1 for each single cell.

![equation](http://latex.codecogs.com/gif.latex?O_t%3D%5Ctext%20%7B%20Onset%20event%20at%20time%20bin%20%7D%20t)
![equation](http://latex.codecogs.com/gif.latex?s%3D%5Ctext%20%7B%20sensor%20reading%20%7D) 
![equation](http://latex.codecogs.com/gif.latex?P%28s%20%7C%20O_t%20%29%3D%5Ctext%20%7B%20Probability%20of%20a%20sensor%20reading%20value%20when%20sleep%20onset%20is%20observed%20at%20a%20time%20bin%20%7D%20t)

$L_{cj} = \sum_{i} c_{i} * log(p_{ij})$

