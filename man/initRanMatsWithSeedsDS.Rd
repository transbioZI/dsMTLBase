% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initRanMatsWithSeedsDS.R
\name{initRanMatsWithSeedsDS}
\alias{initRanMatsWithSeedsDS}
\title{Initialize variables with given seeds}
\usage{
initRanMatsWithSeedsDS(rank, X, seedH, seedHv, seedW)
}
\arguments{
\item{rank}{The rank of data matrix in factorization}

\item{X}{The name of the data matrix for factorization}

\item{seedH}{The seed for random initialization of the shared component matrix (H)}

\item{seedHv}{The seed for random initialization of the heterogeneous component matrix (Hv)}

\item{seedW}{The seed for random initialization of the heterogeneous component matrix (W)}
}
\value{
The initialized variable matrices
}
\description{
The initialization of server-side variables for method dsMTL_iNMF
}
\details{
In dsMTL_iNMF, variable matrices were initialized as drawn from the uniform distribution U(0,2).
}
\author{
Han Cao
}
