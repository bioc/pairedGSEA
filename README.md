
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pairedGSEA

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

## Install from Github

``` r
# Install Bioconductor packages with:
# devtools::install_bioc(c("DESeq2", "DEXSeq", "fgsea", "SummarizedExperiment", "sva", "BiocParallel"))

# Install pairedGSEA
devtools::install_github("shdam/pairedGSEA")
```

## Article

## Vignettes

Vignettes will be available at [https://biosurf.org/](biosurf).

If you have any issues or questions regarding the use of pairedGSEA,
please do not hesitate to raise an issue on GitHub. In this way, others
may also benefit from the answers and discussions.

## Usage

pairedGSEA assumes you already preprocessed and aligned your sequencing
reads to transcript level. Please ensure the matrix rownames have the
format: gene:transcript. See `pairedGSEA::example_object` for an
example.

``` r
library(pairedGSEA)

# Load your transcription counts matrix
tx_count <- read.csv("path/to/counts.csv") # Or other load function depending on how you stored your results.
md_file <- "path/to/metadata.xlsx" # Can also be a .csv file or a data.frame object
group_col <- "condition" # Name of column that specifies the groups you would like to compare
sample_col <- "id" # Name of column that specifies the sample id of each sample. This is used to ensure the metadata and count data contains the same samples and to arrange the data according to the metadata (important for underlying tools)
baseline <- "Healthy" # Name of baseline group, as they are named in the group_col column
case <- "Patient" # Name of case group, as they are named in the group_col column
experiment_title <- "Healthy vs gene knockout" # Name of your experiment. This is used in the file names that are stored if store_results is TRUE
```

Running a paired differential gene expression and splicing analysis.

``` r
de_results <- paired_de(
    tx_count = tx_count,
    metadata = md_file,
    group_col = group_col,
    sample_col = sample_col,
    baseline = baseline,
    case = case,
    experiment_title = experiment_title,
    run_sva = TRUE,
    prefilter = 10,
    fit_type = "local",
    store_results = TRUE,
    quiet = FALSE,
    parallel = TRUE,
    BPPARAM = BiocParallel::bpparam()
  )
```
