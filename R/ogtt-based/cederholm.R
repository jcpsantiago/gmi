#' Cederholm insulin sensitivity index
#'
#' @param bw Body weight(kg).
#' @param g Vector with glucose values.
#' @param i Vector with insulin values.
#'
#' @return An integer.
#' @export
cederholm = function(bw, g, i){
  (75000 + (g[1]-g[5]) * 1.15 * 180 * 0.19 * bw)/(120 * log(mean(i) * mean(g)))
}
