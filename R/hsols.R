#' HSOLS generator
#' @export
hsols <- function(hole_spec) {
  s <- deparse(substitute(hole_spec))
  n <- sum(unlist(lapply(parseholes(s), prod)))
  template <- system.file("hsols.minion.rsp", package = "minionator")
  R.rsp::rsource(template, args = list(N = n))
  R.rsp::rfile(template, args = list(N = n))
}
