context("test-nefa_index")

test_that("happy path works", {
  expect_error(nefa_index(ins = 1, bmi = 1, nefa = 1))
  expect_error(nefa_index(ins = c(1, 2), bmi = 1, nefa = 1))
  expect_error(nefa_index(ins = c(1, 2, 3), bmi = c(1, 2), nefa = 1))
  expect_error(nefa_index(ins = c(1, 2, 3), bmi = 1, nefa = c(1, 2)))
})
