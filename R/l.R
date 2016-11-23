#' Matrix variables
#'
#' @param p
#' @param q
#' @param name
#'
#' @export
l <- function(p, q, name = "l") {
  s <- "["
  for(i in 1:length(p)){
    s <- paste0(s, name, "[", p[i], ", ", q[i], "]")
    if(i < length(p)) s <- paste0(s, ", ")
  }
  s <- paste0(s, "]")
  return(s)
}
