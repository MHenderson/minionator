#' Equality constraint
#' @export
eq <- function(i, j, k, name = "l") {
  sprintf("eq(%s[%s, %s], %s)", name, i, j, k)
}
