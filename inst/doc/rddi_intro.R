## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval = FALSE------------------------------------------------------
#  library(rddi)

## ----eval = FALSE-------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("Global-TIES-for-Children/rddi")

## ----eval = FALSE-------------------------------------------------------------
#  splat <- function(x, f) {
#    do.call(f, x)
#  }

## ----example, eval = FALSE----------------------------------------------------
#  library(purrr)
#  
#  # to convert to dots (...)
#  splat <- function(x, f) {
#    do.call(f, x)
#  }
#  
#  # read in metadata held in a csv
#  ds <- read_csv("insert path to file here")
#  
#  # create a variable to add var to dataset
#  descr_var <- pmap(
#    .l = list(name = ds$name, description = ds$description),
#    .f = function(name, description) ddi_var(varname = name, ddi_labl(description))
#  )
#  
#  # Build the codebook
#  codebook <- ddi_codeBook(
#    ddi_stdyDscr(
#      ddi_citation(
#        ddi_titlStmt(
#          ddi_titl("test")
#        )
#      )
#    ),
#    splat(descr_many_var, ddi_dataDscr) # var elements in data description
#  )

## ----validate, eval = FALSE---------------------------------------------------
#  codebook %>%
#    validate_codebook()
#  #> [1] TRUE
#  #> attr(,"errors")
#  #> character(0)`

## ----export, eval = FALSE-----------------------------------------------------
#  library(xml2)
#  
#  write_xml(as_xml(codebook), "codebook.xml")

