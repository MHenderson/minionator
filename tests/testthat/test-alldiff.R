context("alldiff")

test_that("alldiff works", {
  f <- function(i) paste0("l", sprintf("[%s, %s]", i, 0:3))
  m <- matrix(unlist(lapply(0:3, f)), nrow = 4)
  expect_equal(alldiff(m[, 1]), "alldiff([l[0, 0], l[0, 1], l[0, 2], l[0, 3]])")
  expect_equal(alldiff(m[, 2]), "alldiff([l[1, 0], l[1, 1], l[1, 2], l[1, 3]])")
  expect_equal(alldiff(m[, 3]), "alldiff([l[2, 0], l[2, 1], l[2, 2], l[2, 3]])")
  expect_equal(alldiff(m[, 4]), "alldiff([l[3, 0], l[3, 1], l[3, 2], l[3, 3]])")
})
