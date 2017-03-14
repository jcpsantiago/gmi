#' Calculate insulin sensitivity from fasting values
#'
#' @param glu Fasting glucose.
#' @param ins Fasting insulin.
#' @param nefa Fasting NEFA.
#' @param index Insulin sensitivity index as a string. This can be one of
#'     "FIRI", "HOMA-IR", "QUICKI" or "Revised QUICKI".
#'
#' @return An integer.
#' @examples
#' df <- data.frame(glucose = 90, insulin = 57, nefa = 287)
#' insuSen <- ISI_fasting(glu = df$glucose, ins = df$insulin,
#' nefa = df$nefa, index = "revised QUICKI")
#'
#' # Using sample data
#' require(dplyr)
#' OGTT_tidy %>%
#' filter(timePoint == -60) %>% # keep only fasting values
#' group_by(ID) %>% # calculate index for each subject
#' summarise(InsuSen = ISI_fasting(glu = glucose_mgdl,
#'                                 ins = insulin_microU, nefa = nefa_umolL,
#'                                 index = "revised QUICKI"))
#'
#'
#' @export
ISI_fasting <- function(glu = NA, ins = NA,
                        nefa = NA, index = NA){

  # Only numeric values!
  if(any(is.numeric(c(glu, ins, nefa)) == FALSE) == TRUE)
    stop("glu, ins and nefa must be numeric!")

  # Only allow implemented indexes.
  q <- c("QUICKI", "quicki", "Quicki")
  rev_q <- c("revised QUICKI", "QUICKIR", "rev quicki",
             "Revised QUICKI", "Rev QUICKI", "quickir")

  if(!(index %in% c("FIRI", "HOMA-IR", q, rev_q)))
    stop("Please provide a valid index to the `index =` argument. For a list of implemented indexes please see ?ISIcalc")

  # Check if all arguments were given
  if(is.na(glu) == TRUE & is.na(ins) == TRUE)
    stop("Please provide glucose and insulin values during fasted state.")

  # Make sure vectors have length 1 -- only fasting values, no other timepoints allowed!
  if(length(glu) > 1 | length(ins) >1)
    stop("Vectors are longer than 1. Are you using only fasting values?")


  # Calculate the index
  if(index=="FIRI"){
    # FIRI
    (glu * ins)/25

  } else if(index=="HOMA-IR"){
    # HOMA-IR
    (glu * ins)/22.5

  } else if(index %in% c("QUICKI", "quicki", "Quicki")){
    # QUICKI
    1/(log(glu) + log(ins))

  } else {
    # Revised QUICKI
    if(is.na(nefa)==TRUE)
      stop("Please provide fasting NEFA values.")

    1/(log(glu) + log(ins) + log(nefa))
  }
}
