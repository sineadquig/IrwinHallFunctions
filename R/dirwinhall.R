dirwinhall <- function(x, n) {
  if(!installr:::check.integer(n)) stop("n must be an integer")
  if(n < 0) stop("n must be positive")
  if(x < 0) stop("x must be positive")
  if(x > n) stop("x must be less than or equal to n")
  k <- 0:abs(x)
  sum((-1)^k * choose(n, k) * (x - k)^(n - 1))/factorial(n - 1)
}

# Tests
dirwinhall(2, 5)
dirwinhall(-2, 5)
dirwinhall(22, 5)
dirwinhall(2.2, 5)
dirwinhall(2.2, 5.2)
dirwinhall(2.2, -5)
