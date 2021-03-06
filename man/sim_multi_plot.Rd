% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim_multi.R
\name{sim_multi_plot}
\alias{sim_multi_plot}
\title{sim_multi_plot}
\usage{
sim_multi_plot(
  sim_multi_data,
  path_size = 1,
  path_color = NULL,
  ribbon_fill = NULL,
  ribbon_alpha = 0.3,
  x_title = "Times",
  y_title = "Count",
  x_title_size = NULL,
  y_title_size = NULL,
  x_breaks = NULL,
  y_breaks = NULL,
  x_text_size = NULL,
  y_text_size = NULL,
  legend_side = "right",
  legend_title_size = NULL,
  legend_text_size = NULL
)
}
\arguments{
\item{sim_multi_data}{The result from \code{\link[vPan]{sim_multi_stat}}.}

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

\item{legend_side}{The position of legend.}

\item{legend_title_size}{The size of legend title.}

\item{legend_text_size}{The size of legend item labels.}
}
\description{
sim_multi_plot
}
