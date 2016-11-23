#' Dimension of HSOLS from holespec
#'
#' @param hole_spec
#'
#' @return
#' @export
#'
#' @examples
size <- function(hole_spec) {
  sum(unlist(lapply(hole_spec, prod)))
}
