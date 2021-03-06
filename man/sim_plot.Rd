% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim_plot.R
\name{sim_plot}
\alias{sim_plot}
\title{sim_plot}
\usage{
sim_plot(
  sim_stat_res,
  chart_type = "box",
  box_width = c(0.8, 0.8),
  box_size = 1,
  box_color = NULL,
  box_fill = NULL,
  box_alpha = 0.5,
  box_outlier_size = NULL,
  errorbar_width = 0.8,
  errorbar_size = 1,
  errorbar_color = NULL,
  errorbar_alpha = 0.8,
  errorbar_point_size = 2,
  errorbar_point_color = NULL,
  jitter_width = 0.8,
  jitter_size = 1,
  jitter_color = NULL,
  jitter_alpha = 0.1,
  jitter_point_size = 2,
  jitter_point_color = NULL,
  path_size = 1,
  path_color = NULL,
  ribbon_fill = NULL,
  ribbon_alpha = 0.5,
  x_title = "Times",
  y_title = "Count",
  x_title_size = NULL,
  y_title_size = NULL,
  x_breaks = NULL,
  y_breaks = NULL,
  x_text_size = NULL,
  y_text_size = NULL,
  legend_show = T,
  legend_side = "top",
  legend_title = "",
  legend_title_size = NULL,
  legend_text_size = NULL
)
}
\arguments{
\item{sim_stat_res}{The result from \code{\link[vPan]{sim_stat}}.}

\item{chart_type}{A character string of chart type. It should be one of "box", "errorbar", "jitter" and "ribbon".}

\item{box_width}{A numeric vector giving the relative widths of the box and max/min line, ranging from 0 to 1.}

\item{box_size}{The size of lines in boxplot.}

\item{box_color}{A string of color or a named vector of colors for lines in boxplot.}

\item{box_fill}{A string of color or a named vector of colors for boxes in boxplot.}

\item{box_alpha}{The opacity of boxes, ranging from 0 to 1.}

\item{box_outlier_size}{The size of the outliers in boxplot.}

\item{errorbar_width}{A numeric vector giving the relative width of errorbar, ranging from 0 to 1.}

\item{errorbar_size}{The size of errorbar.}

\item{errorbar_color}{A string of color or a named vector of colors for errorbar.}

\item{errorbar_alpha}{The opacity of errorbar, ranging from 0 to 1.}

\item{errorbar_point_size}{The size of point representing the mean value.}

\item{errorbar_point_color}{A string of color or a named vector of colors for point representing the mean value.}

\item{jitter_width}{A numeric vector giving the relative width of jittered points, ranging from 0 to 1.}

\item{jitter_size}{The size of jittered points.}

\item{jitter_color}{A string of color or a named vector of colors for jittered points.}

\item{jitter_alpha}{The opacity of jittered points, ranging from 0 to 1.}

\item{jitter_point_size}{The size of point representing the mean value.}

\item{jitter_point_color}{A string of color or a named vector of colors for point representing the mean value.}

\item{path_size}{The size of path.}

\item{path_color}{A string of color or a named vector of colors for path.}

\item{ribbon_fill}{A string of color or a named vector of colors for ribbon.}

\item{ribbon_alpha}{The opacity of ribbon, ranging from 0 to 1.}

\item{x_title}{The text for the x-axis title.}

\item{y_title}{The text for the y-axis title.}

\item{x_title_size}{The size of x-axis title.}

\item{y_title_size}{The size of y-axis title.}

\item{x_breaks}{A numeric vector of break values on the x-axis.}

\item{y_breaks}{A numeric vector of break values on the y-axis.}

\item{x_text_size}{The size of tick labels on x-axis.}

\item{y_text_size}{The size of tick labels on y-axis.}

\item{legend_show}{Whether show the legend.}

\item{legend_side}{The position of legend.}

\item{legend_title}{The text for the legend title.}

\item{legend_title_size}{The size of legend title.}

\item{legend_text_size}{The size of legend item labels.}
}
\description{
sim_plot
}
