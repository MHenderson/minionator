#' Holes as data.frame
#
#' @param hole_spec
#'
#' @export
empties <- function(hole_spec) {
  h <- holes(hole_spec)
  df <- t(data.frame(lapply(0:7, function(x) (rbind(rep(x, length(h(x))), h(x))))))
  rownames(df) <- 0:15
  colnames(df) <- c("i", "j")
  return(df)
}
