#' HSOLS generator
#' @export
hsols <- function() {
  template <- system.file("hsols.minion.rsp", package = "minionator")
  R.rsp::rsource(template)
  R.rsp::rfile(template)
}
