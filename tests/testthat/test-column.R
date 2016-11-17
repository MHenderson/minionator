context("column")

test_that("column works", {
  expect_equal(column(0, n = 8), "alldiff([l[2, 0], l[3, 0], l[4, 0], l[5, 0], l[6, 0], l[7, 0]])")
  expect_equal(column(1, n = 8), "alldiff([l[2, 1], l[3, 1], l[4, 1], l[5, 1], l[6, 1], l[7, 1]])")
  expect_equal(column(2, n = 8), "alldiff([l[0, 2], l[1, 2], l[4, 2], l[5, 2], l[6, 2], l[7, 2]])")
  expect_equal(column(3, n = 8), "alldiff([l[0, 3], l[1, 3], l[4, 3], l[5, 3], l[6, 3], l[7, 3]])")
  expect_equal(column(4, n = 8), "alldiff([l[0, 4], l[1, 4], l[2, 4], l[3, 4], l[6, 4], l[7, 4]])")
  expect_equal(column(5, n = 8), "alldiff([l[0, 5], l[1, 5], l[2, 5], l[3, 5], l[6, 5], l[7, 5]])")
  expect_equal(column(6, n = 8), "alldiff([l[0, 6], l[1, 6], l[2, 6], l[3, 6], l[4, 6], l[5, 6]])")
  expect_equal(column(7, n = 8), "alldiff([l[0, 7], l[1, 7], l[2, 7], l[3, 7], l[4, 7], l[5, 7]])")
})
