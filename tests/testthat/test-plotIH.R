test_that("plot.irwinhall produces an error when x is not an irwinhall object", {
  # Create a list with the same structure as an irwinhall object
  x <- list(x = 1:10, pdf = dnorm(1:10), cdf = pnorm(1:10), mean = 5, median = 5, variance = 2.5)

  # Try to plot the list as an irwinhall object
  expect_error(plot(x))
})

test_that("plot.irwinhall produces an error when dist is not 'pdf' or 'cdf'", {
  # Create an irwinhall object
  ih <- irwinhall(5)

  # Try to plot the object with dist = "foo"
  expect_error(plot(ih, dist = "foo"))
})

test_that("plot.irwinhall produces an error when x is missing required components", {
  # Create a list with some of the components of an irwinhall object
  x <- list(x = 1:10, pdf = dnorm(1:10))

  # Try to plot the list as an irwinhall object
  expect_error(plot(x))
})
