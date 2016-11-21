#' Parse holes description strings
#'
#' @param x Hole description
#' @examples
#' parseholes(2^2:3^2)
#' @export
parseholes <- function(x) {
  s <- deparse(substitute(x))
  ss <- strsplit(s, ":")[[1]]
  lapply(strsplit(ss, "\\^"), as.numeric)
}
