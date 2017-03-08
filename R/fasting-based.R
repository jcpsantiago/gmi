#' FIRI insulin sensitivity index
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#'
#' @return An integer.
#' @export
FIRI <- function(g, i){
  (g * i)/25
}


#' HOMA-IR insulin sensitivity index
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#'
#' @return An integer.
#' @export
homaIR <- function(g, i){
  (g * i)/22.5
}



#' QUICKI insulin sensitivity index
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#'
#' @return An integer.
#'
#' @export
QUICKI <- function(g, i){
  1/(log(i) + log(g))
}



#' Revised QUICKI insulin sensitivity index
#'
#' Source: http://goo.gl/OJ5OZi
#'
#' @param g Fasting glucose.
#' @param i Fasting insulin.
#' @param n Fasting NEFA.
#'
#' @return An integer.
#'
#' @export
QUICKIR <- function(g, i, n){
  1/(log(i) + log(g) + log(n))
}
