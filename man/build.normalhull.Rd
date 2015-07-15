\name{build.normalhull}
\title{build.normalhull}
\alias{build.normalhull}
\description{
  Build a convex hull of the data in a data frame using
  \code{\link{convhulln}}. 
}
\usage{
build.normalhull(inputframe)
}
\arguments{
  \item{inputframe}{
    A data frame, containing isotopic measurements in data frames
    imported from files using \code{\link{build.isotopeframe}}.
  }
}
\details{
  Use the \code{\link{convhulln}} package to build a convex hull of the
  isotopic measurements given by the input data frame. The data frame is
  assumed to have the measurements presented one per row. If there are
  multiple species present in the data frame, they must be added as
  extra columns, and the order of the columns for each species must be
  the same.
}
\value{
  Return a \eqn{m \times d+1} matrix \eqn{[A|b]} representing the convex
  hull of the system of equations \eqn{Ax \leq -b}.
}
\author{
  Robert Robere
}

\seealso{
  \code{\link{convhulln}}
}

\examples{
\dontrun{## read in data from some files}
\dontrun{input <- build.isotopeframe("predfile", "preyfile")}
\dontrun{## get the convex hull of the predator data}
\dontrun{hull <- build.normalhull(input$pred.frame)}
}
