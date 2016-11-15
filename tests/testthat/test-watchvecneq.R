context("watchvecneq")

## TODO: Rename context
## TODO: Add more tests

test_that("watchvecneq works", {
  expect_equal(watchvecneq(0, 4, 4, 0, 0, 2, 2, 0), "watchvecneq([l[0,4],l[4,0]],[l[0,2],l[2,0]])")
})
