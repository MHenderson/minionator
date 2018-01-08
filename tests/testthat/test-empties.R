context("empties")

df <- structure(
  list(
    i = c(0L, 0L, 1L, 1L, 2L, 2L, 3L, 3L, 4L, 4L, 5L, 5L, 6L, 6L, 7L, 7L),
    j = c(0L, 1L, 0L, 1L, 2L, 3L, 2L, 3L, 4L, 5L, 4L, 5L, 6L, 7L, 6L, 7L)
  ),
  .Names = c("i", "j"),
  row.names = c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"),
  class = "data.frame"
)

test_that("multiplication works", {
  expect_equal(empties(parseholes("2^4")), df)
})
