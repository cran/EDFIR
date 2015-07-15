\name{shift.mean}
\title{shift.mean}
\alias{shift.mean}
%- Also NEED an '\alias' for EACH other topic documented here.
\description{
  Given a collection of predator and prey isotopic measurements, produce
  the average discrimination factors between the two sets of
  measurements. 
}
\usage{
shift.mean(predator.frame, prey.frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predator.frame}{
    A data frame containing isotopic measurements from the predator
    species. 
  }
  \item{prey.frame}{
    A data frame containing isotopic measurements from a collection of
    prey species.
  }
}
\value{
  A vector containing the average discrimination factors between the
  predator and prey sets, or an empty vector otherwise.
}
\author{
  Robert Robere
}

\seealso{
  \code{\link{isotopesolve}}, \code{\link{estimate.shiftvec}}
}
 