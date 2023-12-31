#' A small subset of the GEO:GSE61220 data set.
#'
#' The subset is used in the vignettes and function man pages.
#' The subset was created by extracting genes belonging to
#' Telomere-related gene sets and randomly selecting
#' 900 other genes from the original dataset.
#' @usage data("example_se")
#' @return A `SummarizedExperiment`
#' @format A `SummarizedExperiment`
#' \describe{
#'     \item{assay}{Count matrix with 5611 transcripts and 6 samples}
#'     \item{colData}{The metadata associated with the count matrix}
#' }
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE61220}
"example_se"

#' Output of running paired_diff on example_se.
#' 
#' This example result is used primarily to do package tests
#' and for function man pages
#' @return A `DataFrame`.
#' @format A `DataFrame` with 954 rows and 7 columns.
#' @usage data("example_diff_result")
"example_diff_result"

#' Output of running paired_ora on example_diff_result
#' and gene sets extracted from MSigDB
#' 
#' This example result is used primarily to do package tests
#' and for function man pages.
#' @format A `DataFrame` with 559 rows and 18 columns.
#' @return A `DataFrame`
#' @usage data("example_ora_results")
"example_ora_results"

#' MSigDB gene sets from humans, category C5 with ensemble gene IDs
#' 
#' This example gene set list is used primarily to do package tests
#' and for function man pages.
#' @format A list of 77 human gene sets
#' @return A list of gene sets
#' @usage data("example_gene_sets")
"example_gene_sets"