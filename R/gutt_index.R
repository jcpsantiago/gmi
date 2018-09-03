#' Title
#'
#' @param glu  An ordered vector of glucose values.
#' @param ins  An ordered vector of insulin values.
#' @param body_weight Body weight in kg.
#'
#' @return A double.
#'
#' @examples
gutt_index <- function(glu, ins, body_weight) {

  ## ADD TEST FOR glu and ins length!!
  
  # glucose uptake rate in peripheral tissues
  m <- (75000 + ((glu[1] - glu[2]) * 0.19 * body_weight[1])) / 120

  # metabolic clearance rate
  mcr <- m / mean(glu)

  # insulin sensitivity index
  mcr / log(mean(ins))
}

