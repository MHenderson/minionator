context("holes")

test_that("holes works", {
  ph <- parseholes("2^4")
  h <- holes(ph)
  expect_equal(h(0), c(0, 1))
  expect_equal(h(1), c(0, 1))
  expect_equal(h(2), c(2, 3))
  expect_equal(h(3), c(2, 3))
  expect_equal(h(4), c(4, 5))
  expect_equal(h(5), c(4, 5))
  expect_equal(h(6), c(6, 7))
  expect_equal(h(7), c(6, 7))
})
