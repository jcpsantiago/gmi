#' Cederholm index
#'
#' @param glu  An ordered vector of glucose values.
#' @param ins  An ordered vector of insulin values.
#' @param body_weight Body weight in kg.
#'
#' @return a double.
#'
#' @examples
cederholm_index <- function(glu, ins, body_weight) {
  if (length(ins) > 1) {
    warning("Only the first value of insulin will be used!")
  }

  ## only one value of body_weight and insulin are needed
  (75000 + (glu[1] - glu[2]) * 1.15 * 180 * 0.19 * body_weight[1]) / (120 * log(mean(glu) * mean(ins[1])))
}