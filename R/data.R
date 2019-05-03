#' Sample tidy data from an OGTT in a tidy long form.
#'
#' A dataset containing fasting and 2-hour OGTT values.
#'
#' @format A data frame with 60 rows and 9 variables:
#' \describe{
#'   \item{ID}{subject identifier}
#'   \item{weight_kg}{subject's weight, in kilograms}
#'   \item{bmi}{body-mass index, in kg/m^2}
#'   \item{timePoint}{minutes after the OGTT start; -60 is fasting}
#'   \item{glucose_mgdl}{glucose values in mg/dl}
#'   \item{insulin_pmoll}{insulin values in pmol/L (SI)}
#'   \item{nefa_umolL}{NEFA values in µmol/L}
#'   \item{glucose_mmoll}{glucose values in mmol/L (SI)}
#'   \item{insulin_microU}{insulin values in µU/L}
#' }
"OGTT_long"
