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
  minion_to_str(x) |>
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
