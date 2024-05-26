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
  tidyr::expand_grid(row = 0:(nrow - 1), col = 0:(ncol - 1)) |>
    dplyr::mutate(
      lower = min(domain),
      upper = max(domain),
      name  = name,
      type  = "DISCRETE"
    )
}
