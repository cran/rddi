## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval = FALSE------------------------------------------------------
#  library(rddi)

## ----eval = FALSE-------------------------------------------------------------
#  install.packages("rddi")

## ----eval = FALSE-------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("Global-TIES-for-Children/rddi")

## ----eval = FALSE-------------------------------------------------------------
#  splat <- function(x, f) {
#    do.call(f, x)
#  }

## ----example1, eval = FALSE---------------------------------------------------
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
#    splat(descr_var, ddi_dataDscr)
#  )

## ----example2, eval = FALSE---------------------------------------------------
#  
#  # splatting two or more node types into the parent node
#  codebook <- ddi_codeBook(
#    ddi_stdyDscr(
#      ddi_citation(
#        ddi_titlStmt(
#          ddi_titl("test")
#        )
#      )
#    ),
#    splat(c(descr_varGrp, descr_var), ddi_dataDscr)
#  )

## ----example3, eval = FALSE---------------------------------------------------
#  
#  # Creating a parent node in a function and then appending other child nodes to the content. The below works best with a YAML or JSON data source.
#  generate_stdyInfo <- function(dat) {
#    stdyInfo <- ddi_stdyInfo(
#      splat(
#        c(descr_dataKind(dat), descr_anlyUnit(dat), descr_universe(dat$stdyDscr$stdyInfo$sumDscr$universe),
#          descr_nation(dat), descr_geogCover(dat),descr_geogUnit(dat),
#          descr_timePrd(dat), descr_collDate(dat)),
#        ddi_sumDscr),
#      splat(descr_keyword(dat), ddi_subject)
#    )
#  
#    stdyInfo$content <- append(stdyInfo$content, descr_abstract(dat))
#    stdyInfo
#  }
#  
#  # splatting two or more node types into the parent node
#  codebook <- ddi_codeBook(
#    ddi_stdyDscr(
#      ddi_citation(
#        ddi_titlStmt(
#          ddi_titl("test")
#        )
#      ),
#      generate_stdyInfo(dat)
#    )
#  )

## ----example4, eval = FALSE---------------------------------------------------
#  mixed_content_cb <- ddi_codeBook(
#    ddi_stdyDscr(
#      ddi_citation(
#        ddi_titlStmt(
#          ddi_titl("Study title")
#        )
#      ),
#      ddi_othrStdyMat(
#        ddi_relMat(
#          "description of related material",
#          ddi_citation(
#            ddi_titlStmt(
#              ddi_titl("Title of Related Material")
#            )
#          )
#        )
#      )
#    )
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
#  
#  # for codebooks with mixed content elements
#  xml <- as_xml(mixed_content_cb)
#  xml <- gsub("&lt;", "<", xml)
#  xml <- gsub("&gt;", ">", xml)
#  
#  # gsub converts xml variable to string so we have to change it back to xml
#  xml <- xml2::read_xml(xml)
#  
#  write_xml(xml, "codebook.xml")

