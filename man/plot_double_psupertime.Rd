% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psupertime_plots.R
\name{plot_double_psupertime}
\alias{plot_double_psupertime}
\title{Projects two different psupertimes onto each other, using points, side by side}
\usage{
plot_double_psupertime(double_obj = NULL, psuper_1 = NULL,
  psuper_2 = NULL, run_names = NULL, process = FALSE)
}
\arguments{
\item{double_obj}{Result of applying double_psupertime to two previously calculated psupertime objects}

\item{psuper_1, }{psuper_2 Two previously calculated psupertime objects}

\item{run_names}{Character vector of length two, labelling the psupertime inputs}
}
\value{
ggplot object plotting the two against each other
}
\description{
To do this, psupertime builds an internal \code{double_psupertime} object containing 
the projections. Given two psupertime objects \code{psuper_1} and \code{psuper_2}, you can 
call it in two ways:
}
\details{
(1) By specifying the two psupertime objects you want to project:
\code{plot_double_psupertime(psuper_1=psuper_1, psuper_2=psuper_2)}

(2) Or by first constructing a \code{double_psupertime} object:
\code{double_obj = double_psupertime(psuper_1, psuper_2)}
\code{plot_double_psupertime(double_obj=double_obj)}

For the coefficients of the two objects to be meaningfully applied to each 
other, the data needs to have been processed in the same way for each. We 
therefore recommend first preprocessing the data (either via \code{psupertime}'s 
defaults, or via your preferred method, then running \code{psupertime} with 
\code{smooth=FALSE} and \code{scale=FALSE}.
}
