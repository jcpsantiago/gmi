#' NEFA-ISI insulin sensitivity index
#'
#' Described by Wagner at al., 2016 (http://goo.gl/cwJNz7)
#'
#' @param i Insulin.
#' @param n NEFA.
#' @param b BMI.
#'
#' @return An integer.
#'
#' @export
nefaISI = function(bmi, i, n){
  60*exp(3.853 - 0.9*log(b[1])
         -0.205*log(i[1])
         -0.128*log(i[2])
         -0.256*log(i[3])
         -0.138*log(n[3])
  )
}
