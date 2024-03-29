% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/variables.R
\name{ddi_dmns}
\alias{ddi_dmns}
\title{dmns and its child nodes}
\usage{
ddi_dmns(...)
}
\arguments{
\item{...}{Child nodes or attributes.}
}
\value{
A ddi_node object.
}
\description{
This element defines a variable as a dimension of the nCube, and should be
repeated to describe each of the cube's dimensions. The attribute "rank" is
used to define the coordinate order (rank="1", rank="2", etc.). The attribute
"varRef" is an IDREF that points to the variable that makes up this dimension
of the nCube. More information on these elements, especially their allowed
attributes, can be found in the references.
}
\details{
\emph{Parent nodes}

\code{dmns} is contained in \code{nCube}.
}
\section{Shared and complex child nodes}{

\itemize{
\item \code{\link[=ddi_cohort]{ddi_cohort()}}
}
}

\examples{
ddi_dmns(rank = "1", varRef = "var01")

}
\references{
\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/dmns.html}{dmns documentation}
}
