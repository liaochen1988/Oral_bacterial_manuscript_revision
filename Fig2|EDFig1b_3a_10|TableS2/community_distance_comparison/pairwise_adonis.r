library(pairwiseAdonis)

# antibiotics
csv_file = read.table('distance_matrix_Antibiotic.csv', row.names = 1, sep=",", header=TRUE)
padonis_res_abx <- pairwise.adonis(csv_file[,1:35], csv_file$Group, p.adjust.m='fdr', perm=9999)
write.csv(padonis_res_abx, "pairwise_adonis_Antibiotic_result.csv", row.names=FALSE)

# control
csv_file = read.table('distance_matrix_Control.csv', row.names = 1, sep=",", header=TRUE)
padonis_res_control <- pairwise.adonis(csv_file[,1:27], csv_file$Group, p.adjust.m='fdr', perm=9999)
write.csv(padonis_res_control, "pairwise_adonis_Control_result.csv", row.names=FALSE)

# dss
csv_file = read.table('distance_matrix_DSS.csv', row.names = 1, sep=",", header=TRUE)
padonis_res_dss <- pairwise.adonis(csv_file[,1:22], csv_file$Group, p.adjust.m='fdr', perm=9999)
write.csv(padonis_res_dss, "pairwise_adonis_DSS_result.csv", row.names=FALSE)

