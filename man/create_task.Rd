% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{create_task}
\alias{create_task}
\title{Create regression or classification task.}
\usage{
create_task(model, dataset, target_var, weights = NULL)
}
\arguments{
\item{model}{Name of a used model in mlr format.}

\item{dataset}{Data frame on which model will be trained.}

\item{target_var}{Name of column in dataset containing explained variable.}

\item{weights}{Weights for observations.}
}
\value{
mlr task object
}
\description{
Create regression or classification task.
}
