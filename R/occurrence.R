#' Occurrence constraint
#'
#' @param i
#' @param j
#' @param k
#' @param l
#' @param name
#'
#' @export
occurrence <- function(i, j, k, l, name = "l") {
  sprintf("occurrence(%s[%s, %s], %s, %s)", name, i, j, k, l)
}
