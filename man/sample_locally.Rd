% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explore.R
\name{sample_locally}
\alias{sample_locally}
\title{Generate dataset for local exploration.}
\usage{
sample_locally(data, explained_instance, explained_var, size, method = "live",
  fixed_variables = NULL)
}
\arguments{
\item{data}{Data frame from which new dataset will be simulated.}

\item{explained_instance}{One row data frame with the same variables
as in data argument. Local exploration will be performed around this observation.}

\item{explained_var}{Name of a column with the variable to be predicted.}

\item{size}{Number of observations is a simulated dataset.}

\item{method}{If "live", new observations will be created by changing one value
per observation. If "lime", new observation will be created by permuting  all
columns of data.}

\item{fixed_variables}{names or numeric indexes of columns which will not be changed
while sampling.}
}
\value{
list consisting of
\item{data}{Simulated dataset.}
\item{target}{Name of the response variable.}
\item{explained_instance}{Instance that is being explained.}
}
\description{
Generate dataset for local exploration.
}
\examples{
\dontrun{
dataset_for_local_exploration <- sample_locally(data = wine,
                                               explained_instance = wine[5, ],
                                               explained_var = "quality",
                                               size = 50,
                                               standardise = TRUE)
}

}
