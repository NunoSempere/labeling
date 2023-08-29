\name{wilkinson}
\alias{wilkinson}
\title{Wilkinson's labeling algorithm}
\usage{
  wilkinson(dmin, dmax, m,
    Q = c(1, 5, 2, 2.5, 3, 4, 1.5, 7, 6, 8, 9),
    mincoverage = 0.8,
    mrange = max(floor(m/2), 2):ceiling(6 * m))
}
\arguments{
  \item{dmin}{minimum of the data range}

  \item{dmax}{maximum of the data range}

  \item{m}{number of axis labels}

  \item{Q}{set of nice numbers}

  \item{mincoverage}{minimum ratio between the the data
  range and the labeling range, controlling the whitespace
  around the labeling (default = 0.8)}

  \item{mrange}{range of \code{m}, the number of tick
  marks, that should be considered in the optimization
  search}
}
\value{
  vector of axis label locations
}
\description{
  Wilkinson's labeling algorithm
}
\note{
  Ported from Wilkinson's Java implementation with some
  changes.  Changes: 1) m (the target number of ticks) is
  hard coded in Wilkinson's implementation as 5.  Here we
  allow it to vary as a parameter. Since m is fixed,
  Wilkinson only searches over a fixed range 4-13 of
  possible resulting ticks.  We broadened the search range
  to max(floor(m/2),2) to ceiling(6*m), which is a larger
  range than Wilkinson considers for 5 and allows us to
  vary m, including using non-integer values of m.  2)
  Wilkinson's implementation assumes that the scores are
  non-negative. But, his revised granularity function can
  be extremely negative. We tweaked the code to allow
  negative scores.  We found that this produced better
  labelings.  3) We added 10 to Q. This seemed to be
  necessary to get steps of size 1.  It is possible for
  this algorithm to find no solution.  In Wilkinson's
  implementation, instead of failing, he returns the
  non-nice labels spaced evenly from min to max.  We want
  to detect this case, so we return NULL. If this happens,
  the search range, mrange, needs to be increased.
}
\author{
  Justin Talbot \email{justintalbot@gmail.com}
}
\references{
  Wilkinson, L. (2005) The Grammar of Graphics,
  Springer-Verlag New York, Inc.
}

