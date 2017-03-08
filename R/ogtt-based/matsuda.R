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
matsuda = function(g, i){
  10000/sqrt(g[1] * i[1] * mean(g) * mean(i))
}
