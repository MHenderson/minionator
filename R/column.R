#' @export
column <- function(hole_spec) {
  h <- holes(hole_spec)
  n <- size(hole_spec)
  function(x) {
    alldiff(l(setdiff(0:(n - 1), h(x)), rep(x, n - 2)))
  }
}
