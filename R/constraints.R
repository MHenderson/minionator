f_unary <- function(constraint, variables) {
  args <- make_args(variables)
  glue::glue("{constraint}([{args}])")
}

f_binary <- function(constraint, variables, value) {
  args <- make_args(variables)
  glue::glue("{constraint}([{args}],{value})")
}

f_binary_vec <- function(constraint, x, y) {
  x_args <- make_args(x)
  y_args <- make_args(y)
  glue::glue("{constraint}([{x_args}],[{y_args}])")
}

g_unary <- function(constraints) {
  purrr::map2_chr(constraints$constraint, constraints$variables, f_unary)
}

g_binary <- function(constraints) {
  purrr::pmap_chr(list(constraints$constraint, constraints$variables, constraints$value), f_binary)
}

g_binary_vec <- function(constraints) {
  purrr::pmap_chr(list(constraints$constraint, constraints$x, constraints$y), f_binary_vec)
}

unary_constraints_to_str <- function(X) {
  paste(g_unary(X), collapse = "\n")
}

binary_constraints_to_str <- function(X) {
  paste(g_binary(X), collapse = "\n")
}

binary_vec_constraints_to_str <- function(X) {
  paste(g_binary_vec(X), collapse = "\n")
}
