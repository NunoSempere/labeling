\name{extended}
\alias{extended}
\title{An Extension of Wilkinson's Algorithm for Position Tick Labels on Axes}
\usage{
  extended(dmin, dmax, m, Q = c(1, 5, 2, 2.5, 4, 3),
    only.loose = FALSE, w = c(0.25, 0.2, 0.5, 0.05))
}
\arguments{
  \item{dmin}{minimum of the data range}

  \item{dmax}{maximum of the data range}

  \item{m}{number of axis labels}

  \item{Q}{set of nice numbers}

  \item{only.loose}{if true, the extreme labels will be
  outside the data range}

  \item{w}{weights applied to the four optimization
  components (simplicity, coverage, density, and
  legibility)}
}
\value{
  vector of axis label locations
}
\description{
  \code{extended} is an enhanced version of Wilkinson's
  optimization-based axis labeling approach. It is
  described in detail in our paper. See the references.
}
\author{
  Justin Talbot \email{justintalbot@gmail.com}
}
\references{
  Talbot, J., Lin, S., Hanrahan, P. (2010) An Extension of
  Wilkinson's Algorithm for Positioning Tick Labels on
  Axes, InfoVis 2010.
}

