#' Build a Unary Constraint
#'
#' Converts a unary constraint name like "alldiff" and
#' a variable dataframe into the Minion 3 input string
#' representing the given constraint over the given
#' variables.
#'
#' @param constraint A string naming a Minion unary constraint
#' @param variables A variable dataframe
#'
#' @return A string representing the given constraint
#' over the given variables.
f_unary <- function(constraint, variables) {
  args <- make_args(variables)
  glue::glue("{constraint}([{args}])")
}

#' Build a Binary Constraint
#'
#' Converts a binary constraint name like "sumgeq", a variable
#' dataframe and a value into the Minion 3 input string
#' representing the given constraint over the given variables.
#'
#' @param constraint String naming a Minion binary constraint
#' @param variables Variable dataframe
#' @param value Numeric value
#'
#' @return A string representing the given constraint
#' over the given variables.
f_binary <- function(constraint, variables, value) {
  args <- make_args(variables)
  glue::glue("{constraint}([{args}],{value})")
}

#' Build a Binary Vector Constraint
#'
#' Converts a binary vector constraint name like "watchvecneq"
#' and two variable dataframes into the Minion 3 input string
#' representing the given constraint over the given variables.
#'
#' @param constraint String naming a Minion binary constraint
#' @param x Variable dataframe
#' @param y Variable dataframe
#'
#' @return A string representing the given constraint
#' over the given variables.
f_binary_vec <- function(constraint, x, y) {
  x_args <- make_args(x)
  y_args <- make_args(y)
  glue::glue("{constraint}([{x_args}],[{y_args}])")
}

#' Convert a List of Unary Constraints to String
#'
#' Given a list with with a vector of constraints and a
#' vector of variable dataframes, convert all into a vector
#' of Minion 3 input strings.
#'
#' @param constraints List with two elements: constraint,
#' a vector of unary constraint names, variables, a vector
#' of variable dataframes.
#'
#' @return A vector of strings representing the given constraints
#' over the given variables.
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
