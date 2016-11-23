#' @export
row <- function(hole_spec) {
  h <- holes(hole_spec)
  n <- size(hole_spec)
  function(x) {
    alldiff(l(rep(x, n - 2), setdiff(0:(n - 1), h(x))))
  }
}
