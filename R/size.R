size <- function(hole_spec) {
  sum(unlist(lapply(hole_spec, prod)))
}
