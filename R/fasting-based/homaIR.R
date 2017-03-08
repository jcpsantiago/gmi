#' HOMA-IR insulin sensitivity index
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#'
#' @return An integer.
#' @export
homaIR = function(g, i){
  (g * i)/22.5
}
