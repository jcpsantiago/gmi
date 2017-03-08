#' Gutt insulin sensitivity index
#'
#' @param bw Body weight (kg)
#' @param g Vector with glucose values.
#' @param i Vector with insulin values.
#'
#' @return An integer.
#' @export
gutt = function(bw, g, i ){
  (75000 + (g[1]-g[5]) * 0.19 * bw)/(120 * log((i[1] + i[5])/2) * ((g[1] + g[5])/2))
}
