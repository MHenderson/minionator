#' HSOLS generator
#'
#' @param hole_spec_expr
#'
#' @export
hsols <- function(hole_spec_expr) {
  s <- deparse(substitute(hole_spec_expr))
  template <- system.file("hsols.minion.rsp", package = "minionator")
  template_args <- list(hole_str = s)
  R.rsp::rsource(template, args = template_args)
  R.rsp::rfile(template, args = template_args)
}
