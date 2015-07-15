\name{isotopesolve}
\title{isotopesolve}
\alias{isotopesolve}
\description{
  Solve the linear system of inequalities given by
  \code{\link{construct.linearsys}} using \code{lpSolve}.
}
\usage{
isotopesolve(predatorframe, preyframe, maximize="min")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predatorframe}{
    A data frame containing isotopic measurements for a predator
    species. 
  }
  \item{preyframe}{
    A data frame containing isotopic measurements for a set of prey
    species. 
  }
  \item{maximize}{
    An optional argument, asking whether or not you would like to
    maximize or minimize the default objective function.
  }
}
\value{
  A summary object output by \code{lp} for the system of
  inequalities produced from the input data.
}
\author{
  Robert Robere
}
