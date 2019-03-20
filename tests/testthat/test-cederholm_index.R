context("test-cederholm_index.R")

test_that("warns about length of ins", {
  expect_warning(cederholm_index(
    glu = c(128, 130),
    ins = c(80, 90),
    body_weight = 68
  ))
})
