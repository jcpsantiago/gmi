#' QUICKI index
#'
#' @param glu  The value of fasting glucose.
#' @param ins  The value of fasting insulin.
#'
#' @return A double.
#'
#' @examples
quicki_index <- function(glu, ins){
  stopifnot(length(glu) == 1 && length(ins) == 1)
  
  1/(log(glu) + log(ins))
}