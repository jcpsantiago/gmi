context("test-matsuda_index.R")

test_that("fails if glu or ins have the wrong size", {
  expect_error(matsuda_index(glu = c(1, 2, 3, 4, 5),
                            ins = c(1, 2, 3)))
  
  expect_error(matsuda_index(glu = c(1, 2),
                            ins = c(1, 2)))
})
