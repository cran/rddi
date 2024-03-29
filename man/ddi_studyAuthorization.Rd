% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/studyAuthorization.R
\name{ddi_studyAuthorization}
\alias{ddi_studyAuthorization}
\alias{ddi_authorizationStatement}
\alias{ddi_authorizingAgency}
\title{studyAuthorization and its child nodes}
\usage{
ddi_studyAuthorization(...)

ddi_authorizationStatement(...)

ddi_authorizingAgency(...)
}
\arguments{
\item{...}{Child nodes or attributes.}
}
\value{
A ddi_node object.
}
\description{
Study Authorization provides structured information on the agency that
authorized the study, the date of authorization, and an authorization
statement. More information on these elements, especially their allowed
attributes, can be found in the references.
}
\details{
\emph{Parent nodes}

\code{studyAuthorization} is contained in \code{stdyDscr}.

\emph{studyAuthorization specific child nodes}
\itemize{
\item \code{ddi_authorizationStatement()} is the text of the authorization.
\item \code{ddi_authorizingAgency()} is the name of the agent or agency that
authorized the study.
}
}
\examples{
ddi_studyAuthorization()

# Functions that have to be wrapped in ddi_studyAuthorization()

ddi_authorizationStatement("Required documentation covering the study purpose, 
                           disclosure information, questionnaire content, and 
                           consent statements was delivered to the OUHS on 
                           2010-10-01 and was reviewed by the compliance officer. 
                           Statement of authorization for the described study 
                           was issued on 2010-11-04.")
                           
ddi_authorizingAgency(affiliation = "Purdue University",
                      abbr = "OUHS",
                      "Office for Use of Human Subjects")

}
\references{
\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/studyAuthorization.html}{studyAuthorization documentation}

\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/authorizationStatement.html}{authorizationStatement documentation}

\href{https://ddialliance.org/Specification/DDI-Codebook/2.5/XMLSchema/field_level_documentation_files/schemas/codebook_xsd/elements/authorizingAgency.html}{authorizingAgency documentation}
}
