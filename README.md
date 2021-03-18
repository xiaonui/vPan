# vPan



### Introduction



### Installation



```
# Check or install packages
packages <- c("ggplot2", "data.table", "ggdendro", "ggrepel", "ggsignif", "tools")
lapply(packages, function(x) {
	if(!require(x, character.only = TRUE)) {
		install.packages(x, dependencies = TRUE)
	}})
if (!requireNamespace("BiocManager", quietly = TRUE)){
  install.packages("BiocManager")
}
BiocManager::install("ComplexHeatmap")
```

```
# Install vPan and build vignettes
if (!requireNamespace("devtools", quietly = TRUE)){
  install.packages("devtools")
}
devtools::install_github("xiaonui/vPan", build_vignettes = TRUE)
```

### Quick Start

```

# Load the library
library(metaFunc)
browseVignettes("vPan")


```

### Input data format


