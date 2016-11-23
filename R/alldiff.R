#' string representing an all_different constraint over the variables in the
#' vector p
#'
#' @param p
#' @param name
#'
#' @export
alldiff <- function(p, name = "l") {
  sprintf("alldiff(%s)", p, name = "l")
}
