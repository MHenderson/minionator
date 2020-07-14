test_that("make_args works", {
  expect_equal(
      object = make_args(discrete_matrix(1, 1, 1:1)),
    expected = "l[0,0]"
  )
  expect_equal(
      object = make_args(discrete_matrix(1, 1, 1:1, name = "p")),
    expected = "p[0,0]"
  )
  expect_equal(
      object = make_args(discrete_matrix(2, 2, 1:1, name = "p")),
    expected = "p[0,0],p[1,0],p[0,1],p[1,1]")
})

test_that("discrete_to_str works", {
  expect_equal(
      object = discrete_to_str(discrete_matrix(2, 2, 1:2)),
    expected = "DISCRETE l[2,2] {1..2}"
  )
  expect_equal(
      object = discrete_to_str(discrete_matrix(2, 2, 1:2, name = "p")),
    expected = "DISCRETE p[2,2] {1..2}"
  )
})
