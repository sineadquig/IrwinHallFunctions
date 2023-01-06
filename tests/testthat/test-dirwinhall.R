# Load the testthat package
library(testthat)



test_that("dirwinhall function returns correct output", {
  # Test a simple case where x = 0 and n = 1
  result = dirwinhall(x = 0, n = 1)
  expect_equal(result, 1.0, tolerance = 1e-6)

  # Test a case where x = 1 and n = 2
  result = dirwinhall(x = 1, n = 2)
  expect_equal(result, 1.0, tolerance = 1e-6)

  # Test a case where x = 2 and n = 3
  result = dirwinhall(x = 2, n = 3)
  expect_equal(result, 0.5, tolerance = 1e-6)

})

test_that("n must be an integer", {
  expect_error(dirwinhall(2.2, 5.5), "n must be an integer")
})

test_that("n must be positive", {
  expect_error(dirwinhall(2.2, 0), "n must be positive")
})

test_that("x must be positive", {
  expect_error(dirwinhall(-2.2, 5), "x must be positive")
})

test_that("x must be less than or equal to n", {
  expect_error(dirwinhall(6, 5), "x must be less than or equal to n")
})


test_that("function is symmetric about the median", {
  n <- 7
  median <- (n+1)/2
  expect_equal(dirwinhall(median, n), dirwinhall(n-median, n))

  n <- 8
  median <- (n/2)+1
  expect_equal(dirwinhall(median, n), dirwinhall(n-median, n))
})




