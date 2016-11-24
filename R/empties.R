#' Holes as data.frame
#
#' @param hole_spec
#'
#' @export
empties <- function(hole_spec) {
  h <- holes(hole_spec)
  n <- size(hole_spec)
  n_empty <- size(lapply(hole_spec, function(x) { return(c(x[1]^2, x[-1])) }))
  df <- t(data.frame(lapply(0:(n - 1), function(x) (rbind(rep(x, length(h(x))), h(x))))))
  rownames(df) <- 0:(n_empty - 1)
  colnames(df) <- c("i", "j")
  return(data.frame(df))
}
