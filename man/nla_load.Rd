% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load.R
\name{nla_load}
\alias{nla_load}
\title{Load NLA data into current R session}
\usage{
nla_load(year, use_rappdirs = FALSE, source_folder = NA)
}
\arguments{
\item{year}{numeric choice of 2007 or 2012.}

\item{use_rappdirs}{logical write files to operating system data directories at the location returned by \code{\link[rappdirs]{user_data_dir}}.}

\item{source_folder}{optional custom file.path to data directory}
}
\value{
list
}
\description{
Load NLA data into current R session
}
\examples{
\dontrun{
# nla_get(2012, use_rappdirs = TRUE)
dt <- nla_load(2012, use_rappdirs = TRUE)
}
}
