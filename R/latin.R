#' Latin square Minion problem.
#'
#' @export
LatinSquare <- R6::R6Class("LatinSquare",
  inherit = minionProblem,
  public = list(
   initialize = function(size, ...) {
     super$initialize(size, ...)
     private$template = system.file("ls.minion.rsp", package = "minionator")
     private$template_args = list(
       N = private$size,
       l = private$variables
     )
   }
  )
)
