#' FIRI index
#'
#' @param glu  The value of fasting glucose.
#' @param ins  The value of fasting insulin.
#'
#' @return
#'
#' @examples
firi_index <- function(glu, ins){
  stopifnot(length(glu) == 1 && length(ins) == 1)
  
  (glu * ins)/25
}