#' string representing an all_different constraint over the variables in the
#' vector p
#'
#' @param p
#'
#' @export
alldiff <- function(p) {
  sprintf("alldiff([%s])", paste0(p, sep = "", collapse = ", "))
}
