#' Cederholm insulin sensitivity index
#'
#' @param bw Body weight(kg).
#' @param g Vector with glucose values.
#' @param i Vector with insulin values.
#'
#' @return An integer.
#' @export
cederholm <- function(bw, g, i){
  (75000 + (g[1]-g[5]) * 1.15 * 180 * 0.19 * bw)/(120 * log(mean(i) * mean(g)))
}


#' Gutt insulin sensitivity index
#'
#' @param bw Body weight (kg)
#' @param g Vector with glucose values.
#' @param i Vector with insulin values.
#'
#' @return An integer.
#' @export
gutt <- function(bw, g, i ){
  (75000 + (g[1]-g[5]) * 0.19 * bw)/(120 * log((i[1] + i[5])/2) * ((g[1] + g[5])/2))
}


#' Matsuda Index.
#'
#' This function will calculate the Matsuda insulin sensitivity index.
#'
#' @param g A vector with ordered glucose values.
#' @param i A vector with ordered insulin values.
#'
#' @return An integer.
#' @examples
#' glu <- c(4.6, 7.2, 9.8, 6.8, 5.16)
#' ins <- c(33, 263, 797, 416, 274)
#' mat_isi <- matsuda(glu, ins)
#'
#'
#'
#' @export
matsuda <- function(g, i){
  10000/sqrt(g[1] * i[1] * mean(g) * mean(i))
}


#' NEFA-ISI insulin sensitivity index
#'
#' Described by Wagner at al., 2016 (http://goo.gl/cwJNz7)
#'
#' @param i Insulin.
#' @param n NEFA.
#' @param bmi BMI.
#'
#' @return An integer.
#'
#' @export
nefaISI <- function(bmi, i, n){
  60*exp(3.853 - 0.9*log(bmi[1])
         -0.205*log(i[1])
         -0.128*log(i[2])
         -0.256*log(i[3])
         -0.138*log(n[3])
  )
}


#' Stumvoll Insulin Sensitivity Index
#'
#' @param bmi Body-mass index.
#' @param g Glucose at 90min.
#' @param i Insulin at 120min.
#'
#' @return An integer.
#' @export
stumvollisi <- function(bmi, g, i){
  0.226 - 0.0032 * bmi - 0.0000645 * i - 0.00375 * g
}


#' Stumvoll Metabolic Clearance Rate
#'
#' @param bmi Body-mass Index
#' @param i Insulin at 120min
#' @param g Glucose at 90min
#'
#' @return An integer.
#'
#' @export
stumvollmcr <- function(bmi, i, g){
  18.8 - 0.271 * bmi - 0.0052 * i - 0.27 * g
}
