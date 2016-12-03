#' Latin square generator
#'
#' @param size Dimension of latin square
#'
#' @export
latin <- function(size) {
  template <- system.file("ls.minion.rsp", package = "minionator")
  template_args <- list(N = size)
  R.rsp::rsource(template, args = template_args)
  R.rsp::rfile(template, args = template_args)
}
