\name{build.hull.list}
\alias{build.hull.list}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  build.hull.list
}
\description{
  Construct a stacked list of values from a data frame containing
  multiple prey types. Used for creating input to convhulln.
}
\usage{
build.hull.list(frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame}{
    A data frame containing a list of isotope values for multiple
    organisms. If there are \eqn{d} isotope values and \eqn{s}
    organisms, then the frame is assumed to contain \eqn{ds} columns,
    where for any \eqn{1 \leq i \leq s-1} the columns \eqn{di} to
    \eqn{d(i+1)-1} contain the isotope measurements for the \eqn{i}th
    organism.
    For each organism, the isotopes (columns) must be in the same
    order. 
  }
}
\value{
  A \eqn{m \times d} matrix, where \eqn{m} is the total number of
  isotopic measurements (over all organisms) and \eqn{d} is the number
  of isotopes. 
}
\author{
  Robert Robere
}

\seealso{
  \code{\link{build.normalhull}}
  \code{\link{convhulln}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
