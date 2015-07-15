\name{parse.isotopeframe}
\title{parse.isotopeframe}
\alias{parse.isotopeframe}
\description{
  Parse the isotope data frame produced by
  \code{\link{build.isotopeframe}} if the input data is in mean/standard
  deviation form.
}
\usage{
parse.isotopeframe(isotope.frame)
}
\arguments{
  \item{isotope.frame}{
    A data frame of isotope mean/sd measurements to be parsed.
  }
}
\details{
  This function is used by the internals of this package for parsing.
}
\value{
  \item{mu}{A matrix of mean vectors, one for each species.}
  \item{sigma}{A matrix of standard deviations for each isotope and
  each species.}
}
\author{
  Robert Robere
}
