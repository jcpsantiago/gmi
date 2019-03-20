#' Revised QUICKI index
#'
#' @param glu  The value of fasting glucose.
#' @param ins  The value of fasting insulin.
#' @param nefa The value of fasting NEFA.
#'
#' @return A double.
#'
#' @examples
revised_quicki_index <- function(glu, ins, nefa) {
  stopifnot(length(glu) == 1 && length(ins) == 1 && length(nefa) == 1)

  1 / (log(glu) + log(ins) + log(nefa))
}
