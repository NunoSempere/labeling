\name{nelder}
\alias{nelder}
\title{Nelder's labeling algorithm}
\usage{
  nelder(dmin, dmax, m,
    Q = c(1, 1.2, 1.6, 2, 2.5, 3, 4, 5, 6, 8, 10))
}
\arguments{
  \item{dmin}{minimum of the data range}

  \item{dmax}{maximum of the data range}

  \item{m}{number of axis labels}

  \item{Q}{set of nice numbers}
}
\value{
  vector of axis label locations
}
\description{
  Nelder's labeling algorithm
}
\author{
  Justin Talbot \email{justintalbot@gmail.com}
}
\references{
  Nelder, J. A. (1976) AS 96. A Simple Algorithm for
  Scaling Graphs, Journal of the Royal Statistical Society.
  Series C., pp. 94-96.
}

