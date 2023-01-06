test_that("pirwinhall produces correct output for n = 1", {
  expect_true(all.equal(pirwinhall(0, 1), 0, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(0.5, 1), 0.5, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(1, 1), 1, tolerance = 1e-1))
})

test_that("pirwinhall produces correct output for n = 2", {
  expect_true(all.equal(pirwinhall(0, 2), 0, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(0.5, 2), 0.125, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(1, 2), 0.5, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(1.5, 2), 0.875, tolerance = 1e-1))
  expect_true(all.equal(pirwinhall(2, 2), 1, tolerance = 1e-1))
})



test_that("pirwinhall produces error for non-integer n", {
  expect_error(pirwinhall(1, 1.5), "n must be an integer")
})



test_that("pirwinhall produces error for negative n", {
  expect_error(pirwinhall(1, -1), "n must be positive")
})

test_that("pirwinhall produces error for negative x", {
  expect_error(pirwinhall(-1, 1), "x must be positive")
})

test_that("pirwinhall produces error for x > n", {
  expect_error(pirwinhall(2, 1), "x must be less than or equal to n")
})
