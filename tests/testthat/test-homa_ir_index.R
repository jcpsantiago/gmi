context("test-homa_ir_index")

test_that("happy path works", {
  expect_error(homa_ir_index(glu = c(1, 2), ins = 1))
  expect_error(homa_ir_index(glu = 1, ins = c(1, 2)))
})
