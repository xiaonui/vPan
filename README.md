
# vPan



## Introduction
 
### Pan-genome and PAV analysis

&emsp;&emsp;Pan-genome is the totality of genes found across members of a given group, revealing the diversity and functional potential within that group. PAV(Presence-absence variation) analysis is an essential step in pan-analysis. The core genome contains genes shared by all and the distributed genome consist of genes not shared by all. The distributed genome can be further divided into genes shared in most members(soft-core genes), genes shared between some members(distributed/accessory genes), and genes present in only one member(unique/private genes).

&emsp;&emsp;“Map-to-pan” is a common strategy for eukaryotic pan-genome analyses. Firstly, construct pan-genome by integrating the reference genome and non-reference sequences. Then, align reads to the pan-genome and examine gene coverage. Finally, determine gene presence/absence and analysis PAV table.


### The core processing workflow of vPan

&emsp;&emsp;vPan is an efficient tool to explore and visualize the complex result in PAV analysis. It provides four modules to 1) display gene coverage distribution, 2) analyze and visualize PAV table, 3) simulate pan/core genome sizes, and 4) find phenotype-associated genes.

&emsp;&emsp;The workflow starts with an object of COV(module 1) or PAV(module 2-4) class. It can be produced by function `get_cov_obj()` and `get_pav_obj()`. It contains coverage/PAV matrix, arguments, phenotype information, and gene information, and will be the main input for the subsequent steps. 

* Module 1 focuses on showing the coverage and the distribution of coverage. Functions: `cov_heatmap()` and `cov_density()`.

* Module 2 focuses on PAV analysis, including overview, classifying genes, clustring, PCA analysis. Functions: `pav_heatmap()`, `pav_hist()`, `pav_stackbar()`, `pav_cluster()`, `pav_halfviolin()` and `pav_pca()`.

* Module 3 focuses on simulating pan/core/private genome sizes and drawing growth curve. Functions : `sim_stat()`, `sim_plot()`, `sim_multi_stat()` and `sim_multi_plot`.

* Module 4 focuses on phenotype association and visualization. Functions: `phen_heatmap()`, `phen_manhattan()`, `phen_block()`, `phen_bar()` and `phen_violin()`.


## Installation

### Installing R/RStudio
&emsp;&emsp;If you do not already have R/RStudio installed, please do as follows:

* Install [R](https://www.r-project.org/)
* Install [RStudio](https://www.rstudio.com/)

### Check or install packages

```
packages <- c("snowfall", "data.table", "ggdendro", "ggplot2", "ggrepel", "ggsignif", "randomcoloR")
lapply(packages, function(x) {
	if(!require(x, character.only = TRUE)) {
		install.packages(x, dependencies = TRUE)
	}})
if (!requireNamespace("BiocManager", quietly = TRUE)){
  install.packages("BiocManager")
}
BiocManager::install("ComplexHeatmap")

```

### Install metaFunc from github.

```
if (!requireNamespace("devtools", quietly = TRUE))
  install.packages("devtools")
library(devtools)
install_github("xiaonui/vPan", build_vignettes = TRUE)
```

## User manual

&emsp;&emsp;You can use `vignette("vPan")` in R to view the vignette of vPan. It can help you start using vPan, including the format and examples of input data, and the use of functions. You can use `?function` to view the help documentation of functions, such as `?pav_heatmap`. 

