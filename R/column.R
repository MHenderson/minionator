#' Latin constraint on columns
#'
#' @param hole_spec
#'
#' @return
#' @export
#'
#' @examples
column <- function(hole_spec) {
  h <- holes(hole_spec)
  n <- size(hole_spec)
  function(x) {
    alldiff(l(setdiff(0:(n - 1), h(x)), rep(x, n - length(h(x)))))
  }
}
