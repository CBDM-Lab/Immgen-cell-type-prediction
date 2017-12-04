immgen_uniq = read.table("ImmGen - Official (April 2012) - class means - No Plus or Minus Signs_uniq.txt", header = T, sep = "\t", stringsAsFactors = F)


##Prior probabilities: divide by ColSums to have probabilities
immgen_uniq_norm = t(t(immgen_uniq) / colSums(immgen_uniq))


##Match Immgen and single cell matrix rownames
immgen_uniq_norm_filt = immgen_uniq_norm[rownames(immgen_uniq_norm) %in% rownames(scmatrix),]
immgen_uniq_norm_filt = as.data.frame(immgen_uniq_norm_filt)
scmatrix = scmatrix[match(rownames(immgen_uniq_norm_filt), rownames(scmatrix)),]


##Calculate likelihood (multinomial model)
immgencelltype_proba = matrix(nrow = ncol(scmatrix), ncol = ncol(immgen_uniq_norm_filt))
for (i in 1:nrow(immgencelltype_proba)) {
  immgencelltype_proba[i,] = apply(immgen_uniq_norm_filt, 2, function(y) dmultinom(x = scmatrix[,i], prob = y, log = T))
}
rownames(immgencelltype_proba) = colnames(scmatrix)
colnames(immgencelltype_proba) = colnames(immgen_uniq_norm_filt)
immgencelltype = apply(immgencelltype_proba, 1, function(x) colnames(immgencelltype_proba)[order(x, decreasing = T)[1]])
