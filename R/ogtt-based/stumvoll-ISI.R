#' Stumvoll Insulin Sensitivity Index
#'
#' @param bmi Body-mass index.
#' @param g Glucose at 90min.
#' @param i Insulin at 120min.
#'
#' @return An integer.
#' @export
stumvollisi = function(bmi, g, i){
  0.226 - 0.0032 * bmi - 0.0000645 * i - 0.00375 * g
}
