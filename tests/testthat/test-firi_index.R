context("test-firi_index.R")

test_that("fail if ins or glu are longer than 1", {
  expect_error(firi_index(glu = 1,
                          ins = c(1, 2)))
})
