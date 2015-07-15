\name{build.isotopeframe}
\alias{build.isotopeframe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  build.isotopeframe
}
\description{
  Given local filenames leading to tab-delimited files of isotope
  values, read in the values from the file and store them in a dataframe.
}
\usage{
build.isotopeframe(pred.file, prey.file, prey.header=TRUE,
  pred.header=FALSE, sep="\t")
}
\arguments{
  \item{pred.file}{
    The name of the file containing the predator isotope data.
  }
  \item{prey.file}{
    The name of the file containing the prey isotope data.
  }
  \item{prey.header}{
    \code{TRUE} if the file pointed to by prey.file has a header line.
  }
  \item{pred.header}{
    \code{TRUE} if the file pointed to by pred.file has a header line.
  }
  \item{sep}{
    The separator used within the isotope files. Defaults to tab.
  }
}
\details{
  The isotope measurement files allowable for input by the system must be formatted
  in one of two ways. The first are files containing raw data:
  they must contain one measurement per line, with the measurement for
  each isotope separated into columns. If the prey file contains more
  than a single species, then the measurements for each species must be
  appended as additional blocks of columns. The columns for each
  species must preserve the ordering of the isotopes.

  The second file format contain the mean and standard deviation of the
  isotopic measurements of each species. Each input species will have
  it's measurements on a single line, organized like so: 
  \verb{<name of species> <mean of isotope 1> <sd of isotope 1> <mean of
  isotope 2> <sd of isotope 2> ...}

  A final note: predator files may also have more than one species,
  although any extra predators will be ignored.
}
\value{
  \item{prey.frame}{A data frame containing the prey isotopic
  measurements (or the mean/sd of each isotope).}
  \item{pred.frame}{A data frame containing the predator isotopic
  measurements (or the mean/sd of each isotope).}
}
\author{
  Robert Robere
}

%% ~Make other sections like Warning with \section{Warning }{....} ~
\examples{
## import data files, assuming the predator file contains header lines
\dontrun{input <- build.isotopeframe("pred_dataset.csv",
"prey_dataset.csv", pred.header=TRUE, prey.header=TRUE)}
}