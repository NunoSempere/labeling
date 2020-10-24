\name{rpretty}
\alias{rpretty}
\title{R's pretty algorithm implemented in R}
\usage{
  rpretty(dmin, dmax, m = 6, n = floor(m) - 1,
    min.n = n\%/\%3, shrink.sml = 0.75, high.u.bias = 1.5,
    u5.bias = 0.5 + 1.5 * high.u.bias)
}
\arguments{
  \item{dmin}{minimum of the data range}

  \item{dmax}{maximum of the data range}

  \item{m}{number of axis labels}

  \item{n}{number of axis intervals (specify one of
  \code{m} or \code{n})}

  \item{min.n}{nonnegative integer giving the
  \emph{minimal} number of intervals. If \code{min.n == 0},
  \code{pretty(.)} may return a single value.}

  \item{shrink.sml}{positive numeric by a which a default
  scale is shrunk in the case when \code{range(x)} is very
  small (usually 0).}

  \item{high.u.bias}{non-negative numeric, typically
  \code{> 1}. The interval unit is determined as
  \code{\{1,2,5,10\}} times \code{b}, a power of 10. Larger
  \code{high.u.bias} values favor larger units.}

  \item{u5.bias}{non-negative numeric multiplier favoring
  factor 5 over 2. Default and 'optimal': \code{u5.bias =
  .5 + 1.5*high.u.bias}.}
}
\value{
  vector of axis label locations
}
\description{
  R's pretty algorithm implemented in R
}
\author{
  Justin Talbot \email{justintalbot@gmail.com}
}
\references{
  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
  \emph{The New S Language}. Wadsworth & Brooks/Cole.
}

