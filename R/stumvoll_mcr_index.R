#' Stumvoll MCR index
#'
#' @param glu  An ordered vector of glucose values
#'     (0', 30', 60', 90', 120').
#' @param ins  An ordered vector of insulin values.
#'     (0', 30', 60', 90', 120').
#' @param bmi  Body-mass index.
#'
#' @return
#'
#' @examples
stumvoll_mcr_index <- function(glu, ins, bmi){
  ## ADD TESTS FOR LENGTH!
  
  18.8 - (0.271 * bmi) - (0.0052 * ins) - (0.27 * glu)
}
