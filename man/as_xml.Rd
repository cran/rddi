% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xml_interop.R
\name{as_xml}
\alias{as_xml}
\title{Get XML representation of ddi_node objects}
\usage{
as_xml(x, ...)
}
\arguments{
\item{x}{A \code{ddi_node} object (or subclass).}

\item{...}{Arguments to pass to methods.}
}
\value{
An \code{xml_document} or \code{xml_node} object whether the object is a root node or not, respectively.
}
\description{
Get XML representation of ddi_node objects
}
\examples{
cb <- ddi_codeBook(ddi_stdyDscr(ddi_citation(ddi_titlStmt(ddi_titl("Sample")))))
as_xml(cb)

}
