#' Equality constraint
#'
#' @param i
#' @param j
#' @param k
#' @param name
#'
#' @return
#' @export
#'
#' @examples
eq <- function(i, j, k, name = "l") {
  sprintf("eq(%s[%s, %s], %s)", name, i, j, k)
}
