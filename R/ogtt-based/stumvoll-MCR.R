#' Stumvoll Metabolic Clearance Rate
#'
#' @param b Body-mass Index
#' @param i Insulin at 120min
#' @param g Glucose at 90min
#'
#' @return An integer.
#'
#' @export
stumvollmcr = function(b, i, g){
  18.8 - 0.271 * b - 0.0052 * i - 0.27 * g
}
