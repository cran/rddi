% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general.R
\name{ddi_txt}
\alias{ddi_txt}
\title{txt node}
\usage{
ddi_txt(...)
}
\arguments{
\item{...}{Child nodes or attributes.}
}
\value{
A ddi_node object.
}
\description{
Lengthier description of the parent element. More information on this
element, especially its allowed attributes, can be found in the references.
}
\details{
\emph{Parent nodes}

\code{txt} is contained in the following elements: \code{anlyUnit}; \code{anlysUnit};
\code{catgry}; \code{catgryGrp}; \code{codingInstructions}; \code{collMode}; \code{dataKind};
\code{frameUnit}; \code{geogCover}; \code{geogUnit}; \code{nCube}; \code{nCubeGrp}; \code{nation};
\code{otherMat}; \code{resInstru}; \code{sampProc}; \code{sampleFrame}; \code{srcOrig}; \code{timeMeth};
\code{universe}; \code{var}; and \code{varGrp}.
}
\examples{
ddi_txt("The following five variables refer to respondent attitudes toward 
         national environmental policies: air pollution, urban sprawl, noise 
         abatement, carbon dioxide emissions, and nuclear waste.")

}
\references{
\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/txt.html}{txt documentation}
}
