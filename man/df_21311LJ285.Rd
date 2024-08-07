% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/df_21311LJ285.R
\docType{data}
\name{df_21311LJ285}
\alias{df_21311LJ285}
\title{21311LJ285 - Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulen insgesamt, Studienbereich, Land, Studienjahr}
\format{
A tibble with 3.953 rows and 7 variables: \describe{ \item{BIL041}{Studienanfänger im 1. Hochschulsemester} \item{BIL042}{Studienanfänger im 1. Fachsemester} \item{BILAP3}{Abschlussprüfung} \item{BILHS4}{Hochschulen insgesamt} \item{BINWSB1}{Studienbereich} \item{DLAND}{Land} \item{SJAHR}{Studienjahr} }
}
\source{
The data in this package was obtained from the \href{https://www.landesdatenbank.nrw.de}{Landesdatenbank NRW} (retrieved on 2024-05-05) using the code '21311LJ285'. The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): \href{http://www.govdata.de/dl-de/by-2-0}{Data licence Germany – attribution – Version 2.0}. Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.

Paragraph 3 stipulates that 'changes, editing, new designs or other amendments must be marked as such in the source note'. Compared to the raw data, the following changes were made: Compared to the raw data, the following changes were made: (1) technical columns ending in "QUAL", "ERR", or "LOCK" were removed, and (2) variable and value labels were added to each table using the \href{https://larmarange.github.io/labelled/}{labelled} package. The code for all these transformations is available through this package.
}
\usage{
df_21311LJ285
}
\description{
The table is sourced from the \href{https://www.landesdatenbank.nrw.de}{Landesdatenbank NRW} from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (\emph{Education, Social Benefits, Health, Administration of Justice}) -> 21 Bildung und Kultur (\emph{Education and Culture}) -> 213 Hochschulen (\emph{Universities}) -> 21311 Statistik der Studenten (\emph{Student Statistics}).
}
\details{
The following summary is automatically generated using \code{\link[skimr:skim]{skimr::skim()}}

Table: Data summary\tabular{ll}{
    \tab  \cr
   Name \tab df_21311LJ285 \cr
   Number of rows \tab 3953 \cr
   Number of columns \tab 7 \cr
   _______________________ \tab  \cr
   Column type frequency: \tab  \cr
   character \tab 4 \cr
   numeric \tab 3 \cr
   ________________________ \tab  \cr
   Group variables \tab None \cr
}


\strong{Variable type: character}\tabular{lrrrrrrr}{
   skim_variable \tab n_missing \tab complete_rate \tab min \tab max \tab empty \tab n_unique \tab whitespace \cr
   BILAP3 \tab 0 \tab 1 \tab 5 \tab 8 \tab 0 \tab 3 \tab 0 \cr
   BILHS4 \tab 0 \tab 1 \tab 8 \tab 8 \tab 0 \tab 1 \tab 0 \cr
   BINWSB1 \tab 0 \tab 1 \tab 9 \tab 9 \tab 0 \tab 64 \tab 0 \cr
   DLAND \tab 0 \tab 1 \tab 2 \tab 2 \tab 0 \tab 1 \tab 0 \cr
}


\strong{Variable type: numeric}\tabular{lrrrrrrrrrl}{
   skim_variable \tab n_missing \tab complete_rate \tab mean \tab sd \tab p0 \tab p25 \tab p50 \tab p75 \tab p100 \tab hist \cr
   SJAHR \tab 0 \tab 1 \tab 2010.33 \tab 7.69 \tab 1993 \tab 2005 \tab 2011 \tab 2017 \tab 2022 \tab ▂▅▇▇▇ \cr
   BIL041 \tab 0 \tab 1 \tab 695.71 \tab 1695.20 \tab 0 \tab 32 \tab 130 \tab 647 \tab 25461 \tab ▇▁▁▁▁ \cr
   BIL042 \tab 0 \tab 1 \tab 1131.43 \tab 2388.44 \tab 0 \tab 96 \tab 368 \tab 1203 \tab 30564 \tab ▇▁▁▁▁ \cr
}
}
\examples{
library(labelled)

df_21311LJ285

}
\keyword{datasets}
