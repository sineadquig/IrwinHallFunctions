#' Irwin-Hall cdf
#'
#' @param x random variable, a positive real number <= n
#' @param n number of independent random variables uniformly distributed from 0 to 1, n is a positive integer
#'
#' @return numeric value of cumulative distribution function for given x and n
#'
#' @examples
#' pirwinhall(2.2, 5)
#'
pirwinhall <- function(x, n) {
  if(n != round(n)) stop("n must be an integer")
  if(n < 1) stop("n must be positive")
  if(x < 0) stop("x must be positive")
  if(x > n) stop("x must be less than or equal to n")
  k <- 0:abs(x)
  sum((-1)^k * choose(n, k) * ((x - k)*(x > k))^n)/factorial(n)
}

