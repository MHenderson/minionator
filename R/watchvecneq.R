#' Disequality constraint
#' @export
watchvecneq <- function(i, j, k, l) {
  sprintf("watchvecneq([l[%s,%s],l[%s,%s]],[l[%s,%s],l[%s,%s]])", i, j, j, i, k, l, l, k)
}
