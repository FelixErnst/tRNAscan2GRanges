% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tRNAscanImport-import.R
\name{import.tRNAscanAsGRanges}
\alias{import.tRNAscanAsGRanges}
\alias{tRNAscan2GFF}
\alias{tRNAscanID}
\title{Importing a tRNAscan output file as a GRanges object}
\usage{
import.tRNAscanAsGRanges(input, as.GFF3 = FALSE, trim.intron = TRUE)

tRNAscan2GFF(input)

tRNAscanID(input)
}
\arguments{
\item{input}{\itemize{
\item \code{import.tRNAscanAsGRanges}: a tRNAscan-SE input file
\item \code{tRNAscan2GFF}: a compatible \code{GRanges} object such as the 
output of \code{import.tRNAscanAsGRanges}
}}

\item{as.GFF3}{optional logical for \code{import.tRNAscanAsGRanges}: returns 
a gff3 compatible GRanges object directly. (default: \code{as.GFF3 = FALSE})}

\item{trim.intron}{optional logical for \code{import.tRNAscanAsGRanges}: 
remove intron sequences. This changes the tRNA length reported. To retrieve
the original length fo the tRNA gene, use the \code{width()} function on the 
GRanges object. (default: \code{trim.intron = TRUE})}
}
\value{
a GRanges object
}
\description{
The function \code{import.tRNAscanAsGRanges} will import a tRNAscan-SE output
file and return the information as a GRanges object. The reported 
intron sequences are spliced from the result by default, but can also 
returned as imported.

The function \code{tRNAScan2GFF} formats the output of 
\code{import.tRNAscanAsGRanges} to be GFF3 compliant.

\code{tRNAscanID} generates a unique tRNA ID, which is like the format used 
in the SGD annotation 

\code{t*AminoAcidSingleLetter*(*Anticodon*)*ChromosomeIdentifier**optionalNumberIfOnTheSameChromosome*}
 
Example: tP(UGG)L or tE(UUC)E1.
}
\examples{
gr <- import.tRNAscanAsGRanges(system.file("extdata", 
                               file = "yeast.tRNAscan", 
                               package = "tRNAscanImport"))
gff <- tRNAscan2GFF(gr)
identical(gff,import.tRNAscanAsGRanges(system.file("extdata", 
                               file = "yeast.tRNAscan", 
                               package = "tRNAscanImport"),
                               as.GFF3 = TRUE))
}
\references{
Chan, Patricia P., and Todd M. Lowe. 2016. “GtRNAdb 2.0: An Expanded Database
of Transfer Rna Genes Identified in Complete and Draft Genomes.” Nucleic
Acids Research 44 (D1): D184–9. doi:10.1093/nar/gkv1309.

Lowe, T. M., and S. R. Eddy. 1997. “TRNAscan-Se: A Program for Improved
Detection of Transfer Rna Genes in Genomic Sequence.” Nucleic Acids Research
25 (5): 955–64.
}
