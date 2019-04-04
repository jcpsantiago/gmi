
#' Calculate the area under the curve using the trapezoidal rule.
#' 
#' Function was taken from https://stackoverflow.com/a/24814091/2632184. Assumes
#' in the long form and for one individual. To use on multiple individuals, use
#' a split-apply-combine approach such as with [dplyr::group_by()] and [dplyr::summarize()].
#'
#' @param measure The glucose, insulin, cpeptide, or nefa values.
#' @param time The time it was taken, in order. Can be in minutes or just ordered (e.g. 0, 1, 2, 3).
#'
#' @return Single value for the AUC.
#'
calc_auc <- function(measure, time) {
  # Better in long form here
  # Taken from: 
  pair_wise_sums <- function(x) rowSums(embed(x,2))
  sum(pair_wise_sums(measure) * diff(time) / 2)
}
