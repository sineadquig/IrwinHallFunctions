test_that("irwinhall produces correct output for n = 1", {
  ih <- irwinhall(1)
  expect_s3_class(ih, "irwinhall")
  expect_length(ih$x, 1000)
  expect_equal(ih$mean, 0.5)
  expect_equal(ih$median, 0.5)
  expect_equal(ih$variance, 1/12)

})

test_that("irwinhall produces correct output for n = 2", {
  ih <- irwinhall(2)
  expect_s3_class(ih, "irwinhall")
  expect_length(ih$x, 1000)
  expect_equal(ih$mean, 1)
  expect_equal(ih$median, 1)
  expect_equal(ih$variance, 1/6)

})

test_that("irwinhall produces correct output for n = 5", {
  ih <- irwinhall(5)
  expect_s3_class(ih, "irwinhall")
  expect_length(ih$x, 1000)
  expect_equal(ih$mean, 2.5)
  expect_equal(ih$median, 2.5)
  expect_equal(ih$variance, 5/12)

})

test_that("irwinhall produces error for non-integer n", {
  expect_error(irwinhall(1.5), "n must be an integer")
})

test_that("irwinhall produces error for negative n", {
  expect_error(irwinhall(-1), "n must be positive")
})

test_that("irwinhall can handle large n", {
  ih <- irwinhall(1000)
  expect_s3_class(ih, "irwinhall")
  expect_length(ih$x, 1000)
  expect_equal(ih$mean, 500)
  expect_equal(ih$median, 500)
  expect_equal(ih$variance, 1000 / 12)

})
