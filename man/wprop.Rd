% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wprop.R
\name{wprop}
\alias{wprop}
\title{A function to find the ratio of dry weight and wet weight of fish in local database}
\usage{
wprop(family)
}
\arguments{
\item{family}{family}
}
\value{
Returns a dataframe with the weight ratio (mdw) and it's sd (mdw_sd).
}
\description{
This function searches the ratio of dry weight and wet weight of fish
on the family level. If the family is not available, an average is returned.
}
\examples{
library(fishflux)
wprop(family="Scaridae")

}
\keyword{fish}
\keyword{proportion}
\keyword{weight}
