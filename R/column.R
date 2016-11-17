column <- function(x, n = 8) {
  alldiff(l(setdiff(0:(n - 1), holes(x)), rep(x, n - 2)))
}
