context("test-gutt_index")

test_that("multiplication works", {
  expect_error(gutt_index(glu = 1, ins = c(1, 2), body_weight = 1))
  expect_error(gutt_index(glu = c(1, 2), ins = 1, body_weight = 1))
  expect_error(gutt_index(glu = c(1, 2), ins = c(1, 2), body_weight = c(1, 2)))
})
