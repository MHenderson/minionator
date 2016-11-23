#' Which rows/columns are empty?
#'
#' Gives the indices which are empty from row/column x
#'
#' @param hole_spec
#'
#' @return
#' @export
#'
#' @examples
holes <- function(hole_spec) {
  k <- unlist(lapply(hole_spec, function(x) rep(x[1], x[2])))
  sk <- c(0, cumsum(k)[-length(k)])
  begin <- rep(sk, k)
  end <- rep(k + sk - 1, k)
  function(i) {
    return(begin[i + 1]:end[i + 1])
  }
}
