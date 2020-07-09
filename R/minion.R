#' Discrete Matrix
#'
#' Create a dataframe of discrete variables.
#'
#' @param nrow Number of rows
#' @param ncol Number of columns
#' @param domain Domain of variables
#' @param name Matrix name
#'
#' @return A dataframe representing a nrow x ncol matrix
#' over the given domain.
#' @export
discrete_matrix <- function(nrow, ncol, domain, name = "l") {
  list(row = 0:(nrow - 1), col = 0:(ncol - 1)) %>%
    purrr::cross_df() %>%
    dplyr::mutate(
      lower = min(domain),
      upper = max(domain),
      name  = name,
      type  = "DISCRETE"
    )
}

#' Minion Output
#'
#' Given a list with members variables, search, unary_constraints,
#' binary_constraints and binary_vec_constraints return the Minion
#' 3 input string for the defined constraint program.
#' @param x List with variables, search, unary_constraints,
#' binary_constraints and binary_vec_constraints
#'
#' @return A complete Minion 3 input string.
#' @export
minion_output <- function(x) {
  list(
    variables              = discrete_to_str(x$variables),
    search                 = x$search,
    unary_constraints      = unary_constraints_to_str(x$unary_constraints),
    binary_constraints     = binary_constraints_to_str(x$binary_constraints),
    binary_vec_constraints = binary_vec_constraints_to_str(x$binary_vec_constraints)
  ) %>%
    glue::glue_data(
      "MINION 3
**VARIABLES**
{variables}
**SEARCH**
{search}
**CONSTRAINTS**
{unary_constraints}
{binary_constraints}
{binary_vec_constraints}
**EOF**")
}
