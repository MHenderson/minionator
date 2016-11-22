#' Parse holes description strings
#'
#' @param s Hole description string
#' @examples
#' parseholes(2^2:3^2)
#' @export
parseholes <- function(s) {
  ss <- strsplit(s, ":")[[1]]
  lapply(strsplit(ss, "\\^"), as.numeric)
}
