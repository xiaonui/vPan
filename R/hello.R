# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")

  rice_data <- read.table("../dataset/ngs_pav.tsv")
  rice_data <- rice_data[rowSums(rice_data) != 0,]
  phen_data <- read.csv("../dataset/rice_phen.csv")
  phen_data$test <- rnorm(nrow(phen_data))
  rownames(phen_data) <- phen_data[[1]]
  phen_data <- phen_data[ ,-1]
  gene_data <- data.frame(group = rep("novel", nrow(rice_data)), stringsAsFactors = F)
  rownames(gene_data) <- rownames(rice_data)
  gene_data[grep("LOC",rownames(rice_data)), ] <- "ref"

  sample_res <- sample(1:nrow(rice_data), 200)
  pav_data <- rice_data[sample_res,]
  gene_info <- gene_data[sample_res, ,drop=F]
  phen_info <- phen_data

  loc_data <- read.table("../dataset/gene.loc")
  rownames(loc_data) <- loc_data[[1]]
  loc_data <- loc_data[, -1]
  colnames(loc_data) <- c("chr", "source", "bp", "relat_bp")
  loc_data$group <- ifelse(loc_data$source == "msu7", "ref", "novel")

  loc_data$chr <- as.numeric(gsub("Chr","",gsub("-", NA, loc_data$chr)))
  loc_data$bp <- as.numeric(loc_data$bp)
  loc_data$relat_bp <- as.numeric(loc_data$relat_bp)

  z <- get_pav_obj(pav_data, phen_info, loc_data)


  cov_data <- as.data.frame(matrix(abs(rnorm(1000)), ncol = 10, nrow = 100))
  rownames(cov_data) <- paste0("gene", rownames(cov_data))
  cov_phen <- data.frame(a = sample(c("a1", "a2", "a3"), ncol(cov_data), replace = T),
                         b = rnorm(ncol(cov_data)))
  rownames(cov_phen) <- colnames(cov_data)
  cov_gene <- data.frame(c = sample(c("c1", "c2"), nrow(cov_data), replace = T),
                         d = rnorm(nrow(cov_data)))
  rownames(cov_gene) <- rownames(cov_data)

  c <- get_cov_obj(cov_data, cov_phen, cov_gene)

  rm(list=setdiff(ls(), c("z","c")))

}



