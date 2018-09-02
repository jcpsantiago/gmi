context("test-is_numeric_or_null.R")

source(test_path("testing_vars.R"))

test_that("returns true with one variable", {
  
  expect_true(is_numeric_or_null(bw_null))
  
  expect_true(is_numeric_or_null(glu_num))
})

test_that("returns false with one variable", {
  
  expect_false(is_numeric_or_null(bw_chr))
  
  expect_false(is_numeric_or_null(glu_chr))
})

test_that("returns true with multiple variables", {
  
  expect_true(is_numeric_or_null(bw_null, glu_num, ins_num))
})

test_that("returns false with multiple variables", {
  
  expect_false(is_numeric_or_null(bw_chr, glu_num, ins_chr))
})
