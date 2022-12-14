% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dirwinhall.R
\name{dirwinhall}
\alias{dirwinhall}
\title{Irwin-Hall pdf}
\usage{
dirwinhall(x, n)
}
\arguments{
\item{x}{random variable, a positive real number <= n}

\item{n}{number of independent random variables uniformly distributed from 0 to 1, n is a positive integer}
}
\value{
numeric value of probability density function for given x and n
}
\description{
Irwin-Hall pdf
}
\examples{
dirwinhall(2.2, 5)

}
