# install.packages("dlstats")
library(dlstats)
library(ggplot2)
library(ggthemes)

cat("Fetching stats...\n")
x <- cran_stats(c("labeling"))
cat("Stats fetched.\n")

cat("Plotting stats\n")
if (!is.null(x)) {
  head(x)
  title = "Downloads through time for package labeling"
  ggplot(x, aes(end, downloads)) +
    geom_line() + 
    geom_point(aes(shape=package)) + 
    labs(
      title="Downloads for R package 'labeling' through time",
      subtitle="",
      x="", 
      y="" 
    ) +
    theme_tufte() + 
    theme(
      legend.title = element_blank(),
      plot.title = element_text(hjust = 0.5),
      plot.subtitle = element_text(hjust = 0.5), 
      legend.position="none",
      axis.text.x=element_text(angle=60, hjust=1),
      plot.background=element_rect(fill = "white",colour = NA)
    ) + 
    # scale_x_date(date_breaks = "1 year", date_labels =  "%Y") +
    scale_y_continuous(labels = scales::label_comma())
}

cat("Saving plot\n")
ggsave("stats.png", width=6, height=4)
