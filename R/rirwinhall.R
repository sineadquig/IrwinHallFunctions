#' Irwin-Hall random generator
#'
#' @param num number of observations to be generated
#' @param n number of independent random variables uniformly distributed from 0 to 1, n is a positive integer
#'
#' @return required number of random values from Irwin-Hall distribution for given n
#'
#' @examples
#' rirwinhall(10, 5)
#'
rirwinhall <- function(num, n) {
  if(n != round(n)) stop("n must be an integer")
  if(n < 0) stop("n must be positive")
  if(num != round(num)) stop("num must be an integer")
  if(num < 1) stop("num must be positive")
  replicate(num, sum(runif(n)))
}

