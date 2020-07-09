#' Convert Variable Dataframe Into Minion Variable String
#'
#' @param x A variable dataframe.
#'
#' @return A string representing the input variables
make_args <- function(x) {
  x %>%
    dplyr::mutate(id = glue::glue("{name}[{row},{col}]") %>% as.character()) %>%
    dplyr::summarise(args = glue::glue_collapse(id, sep = ",")) %>%
    dplyr::pull(args)
}

#' Variable Declaration For Discrete Matrix
#'
#' Given a discrete variable dataframe create the variable
#' declaration for Minion.
#'
#' @param X Discrete variable dataframe.
#'
#' @return Variable declaration string for input variable
#' dataframe.
discrete_to_str <- function(X) {
  X %>%
  dplyr::group_by(name) %>%
  dplyr::summarise(
    nrow  = max(row) + 1,
    ncol  = max(col) + 1,
    lower = dplyr::first(lower),
    upper = dplyr::first(upper),
    type  = dplyr::first(type)
  ) %>%
    glue::glue_data("
  {type} {name}[{nrow},{ncol}] {{{lower}..{upper}}}
    ") %>%
    glue::glue_collapse("\n")
}


