#' Stumvoll ISI index
#'
#' @param glu  An ordered vector of glucose values
#'     (0', 30', 60', 90', 120').
#' @param ins  An ordered vector of insulin values.
#'     (0', 30', 60', 90', 120').
#' @param bmi  Body-mass index.
#'
#' @return A double.
#'
#' @examples
stumvoll_isi_index <- function(glu, ins, bmi) {
  ## ADD TESTS FOR LENGTH!

  0.226 - (0.0032 * bmi) - (0.0000645 * ins) - (0.00375 * glu)
}
