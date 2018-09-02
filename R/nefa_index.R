#' NEFA insulin index
#'
#' @param ins  An ordered vector of insulin values.
#' @param bmi  Body-mass index.
#' @param nefa An ordered vector of NEFA values.
#'
#' @return a double.
#'
#' @examples
nefa_index <- function(ins, bmi, nefa) {
  60 * exp(
    3.853 - 0.9 * log(bmi[1])
      - 0.205 * log(ins[1])
      - 0.128 * log(ins[2])
      - 0.256 * log(ins[3])
      - 0.138 * log(nefa[3]) ## why the third value?? should use only one
  )
}
