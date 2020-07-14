#' @importFrom rlang .data
make_args <- function(x) {
  x %>%
    dplyr::mutate(id = glue::glue("{name}[{row},{col}]") %>% as.character()) %>%
    dplyr::summarise(args = glue::glue_collapse(.data$id, sep = ",")) %>%
    dplyr::pull(args)
}

#' @importFrom rlang .data
discrete_to_str <- function(X) {
  X %>%
  dplyr::group_by(.data$name) %>%
  dplyr::summarise(
    nrow  = max(.data$row) + 1,
    ncol  = max(.data$col) + 1,
    lower = dplyr::first(.data$lower),
    upper = dplyr::first(.data$upper),
    type  = dplyr::first(.data$type)
  ) %>%
    glue::glue_data("
  {type} {name}[{nrow},{ncol}] {{{lower}..{upper}}}
    ") %>%
    glue::glue_collapse("\n")
}
