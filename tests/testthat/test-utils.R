context("Test utility (non-exported) functions")

test_that("Calculating AUC is correct", {
  glucose <- c(5.5, 6.5, 6)
  
  # When time is by number/count.
  time <- c(0, 1, 2)
  expect_equal(calc_auc(glucose, time), 12.25)
  
  # When time is in minutes
  time <- c(0, 30, 60)
  expect_equal(calc_auc(glucose, time), 367.5)
})
