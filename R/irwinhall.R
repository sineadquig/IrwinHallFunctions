#' Create Irwin-Hall distribution object
#'
#' @param n number of independent random variables uniformly distributed from 0 to 1, n is a positive integer
#'
#' @return an object of irwinhall class - a list with x values and corresponding pdf and cdf values, mean, median and variance
#'
#' @seealso \code{\link{dirwinhall}}, \code{\link{pirwinhall}}
#'
#' @examples
#' ih1 <- irwinhall(5)
#' ih1$mean

irwinhall <- function(n) {
  if(n != round(n)) stop("n must be an integer")
  if(n < 1) stop("n must be positive")
  x <- base::seq(from=0, to=n, length.out = 1000)
  pdf <- sapply(x, dirwinhall, n = n)
  cdf <- sapply(x, pirwinhall, n = n)
  mean <- n/2
  median <- n/2
  variance <- n/12
  output <- list(x = x,
                 pdf = pdf,
                 cdf = cdf,
                 mean = mean,
                 median = median,
                 variance = variance)
  class(output) <- c("irwinhall", "listof")
  return(output)
}

