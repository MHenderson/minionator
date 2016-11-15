#' Disequality constraint
#' @export
watchvecneq <- function(i, j, k, l, m, n, o, p, name = "l") {
  sprintf("watchvecneq([%s[%s,%s],%s[%s,%s]],[%s[%s,%s],%s[%s,%s]])", name, i, j, name, k, l, name, m, n, name, o, p)
}
