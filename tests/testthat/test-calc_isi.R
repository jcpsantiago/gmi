context("test-calc_isi.R")

source(test_path("testing_vars.R"))

test_that("fail if more than one index is provided", {
  expect_error(calc_isi(index = c("Matsuda", "Gutt")))
})

test_that("warn if there's more than one value of bmi or body_weight", {
  
  expect_warning(calc_isi(glu = c(1, 2, 3, 4, 5),
                          ins = c(1, 2, 3, 4, 5),
                          bmi = c(20, 25),
                          index = "Matsuda"))
  
  expect_warning(calc_isi(glu = c(1, 2, 3, 4, 5),
                          ins = c(1, 2, 3, 4, 5),
                          bmi = c(20),
                          body_weight = c(50, 55),
                          index = "Matsuda"))
})

test_that("fail if index is not correct", {
  expect_error(calc_isi(index = "best index"))
})

test_that("fail if any variable is either not numeric or not NULL", {
  
  expect_error(calc_isi(glu_num, ins_num, bw_chr))
})