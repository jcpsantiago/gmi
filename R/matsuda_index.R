#' Matsuda Index (Composite index)
#'
#' @param glu  An ordered vector of glucose values
#'     (0', 30', 60', 90', 120').
#' @param ins  An ordered vector of insulin values.
#'     (0', 30', 60', 90', 120').
#'
#' @return A double.
#'
#' @examples
matsuda_index <- function(glu, ins) {
  stopifnot(length(glu) == 5 && length(ins) == 5)

  10000 / sqrt(glu[1] * ins[1] * mean(glu) * mean(ins))
}
