# install.packages("dlstats")
library(dlstats)
library(ggplot2)

x <- cran_stats(c("labeling"))

if (!is.null(x)) {
  head(x)
  ggplot(x, aes(end, downloads, group=package, color=package)) +
    geom_line() + geom_point(aes(shape=package))
}

ggsave("test.png", width=6, height=4)
