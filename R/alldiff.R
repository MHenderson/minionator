#' string representing an all_different constraint over the variables in the
#' vector p
#' @export
alldiff <- function(p, name = "l") {
  sprintf("alldiff(%s)", p, name = "l")
}
