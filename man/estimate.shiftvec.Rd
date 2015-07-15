\name{estimate.shiftvec}
\title{estimate.shiftvec}
\alias{estimate.shiftvec}
\description{
  Given two data frames, one containing isotopic measurements from some
  predator species, and another containing isotopic measurements from a
  collection of prey species, return \verb{num.samples} samples of
  discrimination factors from predators to prey.
}
\usage{
estimate.shiftvec(predator, prey, num.samples=1000, num.preysamples=1,
  pred.distinput=FALSE, prey.distinput=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predator}{
    A data frame containing the isotopic measurements (presented as raw
    data or mean/standard deviation) from a predator species.
  }
  \item{prey}{
    A data frame containing the isotopic measurements (presented as raw
    data or mean/standard deviation) from a prey species.
  }
  \item{num.samples}{
    The number of samples of discrimination factors to produce.
  }
  \item{num.preysamples}{
    The number of samples to draw from each prey source when performing
    the estimation process.
  }
  \item{pred.distinput}{
    \code{TRUE} if the predator measurements are in mean/standard
    deviation form (see \code{\link{build.isotopeframe}}).
  }
  \item{prey.distinput}{
    \code{TRUE} if the prey measurements are in mean/standard deviation
    form (see \code{\link{build.isotopeframe}}).
  }
}
\value{
  A matrix with \verb{num.samples} rows, each of which contains one
  estimate discrimination factor.
}
\author{
  Robert Robere
}

\seealso{
  \code{\link{build.isotopeframe}}
}
\examples{
## normally input is read from a file via build.isotopeframe, but here
## we generate the input by hand
## we have three prey species: birds, mice, and bugs
## one predator species: cats
## we are measuring two isotopic values for each: \%\%C and \%\%N
## assume that all measurements are normally distributed
bird.samples <- as.data.frame(mvrnorm(n=25, mu=c(2, 2),
  Sigma=diag(c(1, 1), nrow=2)))
mice.samples <- as.data.frame(mvrnorm(n=25, mu=c(4, 4),
  Sigma=diag(c(1, 1), nrow=2)))
bugs.samples <- as.data.frame(mvrnorm(n=25, mu=c(2, 6),
  Sigma=diag(c(1, 1), nrow=2)))

## note that prey are collected into a single data frame, 
## as are the predators
## if number of samples differs from species to species,
## the data frame should be padded
## with NAs appropriately (this is done automatically when
## reading in from CSV)
pred.frame <- data.frame(cats=mvrnorm(n=20, mu=c(6, 6),
  Sigma=diag(c(1/2, 1/2), nrow=2)))
prey.frame = data.frame(bird=bird.samples, mice=mice.samples,
  bugs=bugs.samples)

## now estimate discrimination factors
## in applications, usually the prey measurements are given by mean/sd
## of corresponding gaussian, so we notify the function that we are
## actually providing samples in this example
estimate.shiftvec(pred.frame, prey.frame, num.samples=10,
  prey.distinput=FALSE) 
}
