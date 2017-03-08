#' FIRI insulin sensitivity index
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#'
#' @return An integer.
#' @export
FIRI = function(g, i){
  (g * i)/25
}
