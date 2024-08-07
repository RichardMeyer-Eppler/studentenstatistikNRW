% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/value_labels.R
\docType{data}
\name{value_labels}
\alias{value_labels}
\title{Value labels for all variables in the student statistics tables}
\format{
A tibble with 1.056 rows and 3 variables:
\describe{
\item{variable}{Variable}
\item{value_label}{Value label (the name is misleading, this is effectively an ID)}
\item{description}{The description for each value label (this is the text for each ID)}
}
}
\source{
The data in this package was obtained from the \href{https://www.landesdatenbank.nrw.de}{Landesdatenbank NRW} (retrieved on 2024-05-05). The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): \href{http://www.govdata.de/dl-de/by-2-0}{Data licence Germany – attribution – Version 2.0}. Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.

Paragraph 3 stipulates that 'changes, editing, new designs or other amendments must be marked as such in the source note'. Compared to the raw data, the following changes were made: (1) column names were changed to lower case.
}
\usage{
value_labels
}
\description{
The value labels are sourced using \code{\link[wiesbaden:retrieve_valuelabel]{wiesbaden::retrieve_valuelabel()}}. Data source is the \href{https://www.landesdatenbank.nrw.de}{Landesdatenbank NRW}.
}
\examples{
value_labels

}
\keyword{datasets}
