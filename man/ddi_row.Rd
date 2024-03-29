% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table.R
\name{ddi_row}
\alias{ddi_row}
\alias{ddi_entry}
\title{row and its child nodes}
\usage{
ddi_row(...)

ddi_entry(...)
}
\arguments{
\item{...}{Child nodes or attributes.}
}
\value{
A ddi_node object.
}
\description{
Each row represents a table row. More information on this element,
especially the allowed attributes, can be found in the references.
}
\details{
\emph{Parent nodes}

\code{row} can be found in \code{tbody} and \code{thead}.

\emph{Child node}

\code{entry} is each table entry in the row.
}
\examples{
ddi_row()

# Functions that need to be wrapped in ddi_row()

ddi_entry("row contents")

}
\references{
\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/row.html}{row documentation}

\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/entry.html}{entry documentation}
}
