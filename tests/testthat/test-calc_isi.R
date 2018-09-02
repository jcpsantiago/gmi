context("test-calc_isi.R")

source(test_path("testing_vars.R"))

test_that("fail if more than one index is provided", {
  expect_error(calc_isi(index = c("Matsuda", "Gutt")))
})

test_that("warn if more than one value of bmi or body_weight", {
  expect_warning(calc_isi(bmi = c(20, 22), index = "Matsuda"))
  expect_warning(calc_isi(bmi = 24, body_weight = c(68, 90), index = "Gutt"))
})

test_that("fail if index is not correct", {
  expect_error(calc_isi(index = "best index"))
})

test_that("fail if any variable is either not numeric or not NULL", {
  
  expect_error(calc_isi(glu_num, ins_num, bw_chr))
})
