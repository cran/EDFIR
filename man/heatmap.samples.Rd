\name{heatmap.samples}
\title{heatmap.samples}
\alias{heatmap.samples}
\description{
  Visualize the output of \code{\link{estimate.shiftvec}} if the data
  has only two isotope measurements.
}
\usage{
heatmap.samples(samples)
}
\arguments{
  \item{samples}{
    A list of samples of discrimination factors produced by
    \code{\link{estimate.shiftvec}}. 
  }
}
\author{
  Robert Robere
}

\seealso{
  \code{\link{estimate.shiftvec}}
}
\examples{
## get the input from a file, where the predator measurements are simple
## raw isotopic measurements, and prey measurements are in mean/sd form
## Heatmap.samples assumes only two isotopes are measured!
\dontrun{input <- build.isotopeframe("predator measurements.dat",
"prey measurements.dat")}

## now get 2000 samples of discrimination factors
\dontrun{out <- estimate.shiftvec(input$pred.frame, input$prey.frame,
 num.samples=2000, pred.distinput=FALSE, prey.distinput=TRUE)}

## now visualize
\dontrun{heatmap.samples(out)}
}
