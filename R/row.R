row <- function(x, n = 8) {
  alldiff(l(rep(x, n - 2), setdiff(0:(n - 1), holes(x))))
}
