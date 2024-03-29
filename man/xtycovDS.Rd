% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xtycovDS.R
\name{xtycovDS}
\alias{xtycovDS}
\title{Estimation of lambda max}
\usage{
xtycovDS(x, y, covar, type, betaCov)
}
\arguments{
\item{x}{One matrix for multiplication}

\item{y}{The other matrix for multiplication}

\item{covar}{Positions corresponding to adjusting covariates in the X dataset}

\item{type}{regress or classify}

\item{betaCov}{estimated beta coefficients from a linear model including only covariates as predictors}
}
\value{
The result matrix
}
\description{
Lambda max corresponds to the lambda for which all beta are equal to 0, except for covariate betas, which fully vary
}
\details{
This was used to estimate the maximum  \eqn{\lambda}
}
\author{
Han Cao & Augusto Anguita-Ruiz
}
