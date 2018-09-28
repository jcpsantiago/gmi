context("test-quicki_index.R")

test_that("fail if ins or glu are longer than 1", {
  expect_error(quicki_index(glu = 1,
                            ins = c(1, 2)))
  
  expect_error(quicki_index(glu = c(1,2),
                            ins = 1))
})
