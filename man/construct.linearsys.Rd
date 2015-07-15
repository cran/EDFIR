\name{construct.linearsys}
\alias{construct.linearsys}
\title{
  construct.linearsys
}
\description{
  Construct a linear system of inequalities from the predator and prey
  isotopic data for input to \code{lpSolve}.
}
\usage{
construct.linearsys(predatorframe, preyframe)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predatorframe}{
    The data frame containing the isotopic measurements from the
    predator species.
  }
  \item{preyframe}{
    The data frame containing the isotopic measurements from the prey species.
  }
}
\value{
  \item{A}{The matrix \eqn{A} used as input to the lp solver.}
  \item{b}{The vector \eqn{b} used as input to the lp solver.}
}
\author{
  Robert Robere
}
\seealso{
  \code{\link{build.normalhull}}
  \code{\link{isotopesolve}}
}
