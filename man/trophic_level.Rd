% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trophic_level.R
\name{trophic_level}
\alias{trophic_level}
\title{A function to find trophic level}
\usage{
trophic_level(sp)
}
\arguments{
\item{sp}{A character value containing the species name}
}
\value{
Returns a dataframe with species, trophic level, and taxonomy level.
}
\description{
A function to find trophic level of a species on either species or genus
level using rfishbase. It returns a data frame containing the trophic level
and the level at which the trophic level was found (species or genus).
}
\examples{
\dontrun{
library(fishflux)
library(plyr)
trophic_level("Lutjanus griseus")
ldply(lapply(c("Chlorurus spilurus","Zebrasoma scopas"), trophic_level))}

}
\keyword{fish}
\keyword{fishbase}
\keyword{level}
\keyword{trophic}
