\docType{package}
\name{labeling-package}
\alias{labeling}
\alias{labeling-package}
\title{Axis labeling}
\description{
  Functions for positioning tick labels on axes
}
\details{
  \tabular{ll}{ Package: \tab labeling\cr Type: \tab
  Package\cr Version: \tab 0.2\cr Date: \tab 2011-04-01\cr
  License: \tab Unlimited\cr LazyLoad: \tab yes\cr }

  Implements a number of axis labeling schemes, including
  those compared in An Extension of Wilkinson's Algorithm
  for Positioning Tick Labels on Axes by Talbot, Lin, and
  Hanrahan, InfoVis 2010.
}
\examples{
heckbert(8.1, 14.1, 4)	# 5 10 15
wilkinson(8.1, 14.1, 4)	# 8 9 10 11 12 13 14 15
extended(8.1, 14.1, 4)	# 8 10 12 14
# When plotting, extend the plot range to include the labeling
# Should probably have a helper function to make this easier
data(iris)
x <- iris$Sepal.Width
y <- iris$Sepal.Length
xl <- extended(min(x), max(x), 6)
yl <- extended(min(y), max(y), 6)
plot(x, y,
    xlim=c(min(x,xl),max(x,xl)),
    ylim=c(min(y,yl),max(y,yl)),
    axes=FALSE, main="Extended labeling")
axis(1, at=xl)
axis(2, at=yl)
}
\author{
  Justin Talbot \email{justintalbot@gmail.com}
}
\references{
  Heckbert, P. S. (1990) Nice numbers for graph labels,
  Graphics Gems I, Academic Press Professional, Inc.
  Wilkinson, L. (2005) The Grammar of Graphics,
  Springer-Verlag New York, Inc. Talbot, J., Lin, S.,
  Hanrahan, P. (2010) An Extension of Wilkinson's Algorithm
  for Positioning Tick Labels on Axes, InfoVis 2010.
}
\seealso{
  \code{\link{extended}}, \code{\link{wilkinson}},
  \code{\link{heckbert}}, \code{\link{rpretty}},
  \code{\link{gnuplot}}, \code{\link{matplotlib}},
  \code{\link{nelder}}, \code{\link{sparks}},
  \code{\link{thayer}}, \code{\link{pretty}}
}
\keyword{dplot}

