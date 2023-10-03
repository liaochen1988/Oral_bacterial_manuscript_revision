library(FEAST)

metadata <- Load_metadata(metadata_path = "metadata_DSS_2E.txt")
otus <- Load_CountMatrix(CountMatrix_path = "asv_DSS_2E.txt")

FEAST_output <- FEAST(C = otus, metadata = metadata, different_sources_flag = 0, dir_path = "./", outfile="DSS_2E")

