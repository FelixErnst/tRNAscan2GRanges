# tRNAscanImport
<img src="https://raw.githubusercontent.com/Bioconductor/BiocStickers/master/tRNA/tRNA.png" height="120">

The default tRNAscan-SE ([Lowe et el. 1997](#Literature)) output is formatted text
document containing text blocks per tRNA delimited by an empty line. 
To access the information in a BioC context the conversion to a GRanges object 
comes to mind. This task is performed by `import.tRNAscanAsGRanges()`, which uses 
regular expressions to extract the information from the text blocks. The result
can be used directly or saved as gff3 file for further use.

Refer to the vignette for an example usage case.

# Installation

The current version of the `tRNAscanImport` package is available from Bioconductor.
 
```{r}
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("tRNAscanImport")
# Load and attach thepackage
library("tRNAscanImport")
```

# Literature

Depending on the development on tRNAscan-SE this might become redundant, since
a gff3 export by tRNAscan-SE might resolve the conversion issue. 

- Lowe, T.M.; Eddy, S.R.(1997): "tRNAscan-SE: A program for 
improved detection of transfer RNA genes in genomic sequence". Nucl. Acids Res. 
25: 955-964. doi:[10.1093/nar/25.5.955](https://doi.org/10.1093/nar/25.5.955)
