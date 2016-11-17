# Gives the indices which are empty from row/column x for a 2^4 HSOLS
holes <- function(x) {
  (2*floor(x/2)):(2*floor(x/2) + 1)
}
