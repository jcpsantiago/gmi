#' Calculate insulin sensitivity from OGTT values
#'
#' @param glu Glucose.
#' @param ins Insulin.
#' @param nefa NEFA.
#' @param bmi Body-mass index.
#' @param bw Body weight in kilos.
#' @param index Insulin sensitivity index as a string. This can be one of "Cederholm",
#'     "Gutt" (aka "ISI 0,120"), "Matsuda", "NEFA-ISI", "Stumvoll-ISI" or "Stumvoll-MCR".
#'
#' @return An integer.
#' @export
ISI_OGTT <- function(glu = NA, ins = NA, nefa = NA,
                     bmi = NA, bw = NA, index = NA){

  # Only allow implemented indexes.
  if(!(index %in% c("Cederholm", "ISI 0,120", "Matsuda", "NEFA-ISI", "Stumvoll-ISI", "Stumvoll-MCR")))
    stop("Plese provide a valid index. For a list of implemented indexes please see ?ISIcalc")

  if(length(bmi) > 1)
    stop("Input only one value for BMI. Using unique() or subsetting (x[1]) may be necessary.")

  if(length(bw) > 1)
    stop("Input only one value for body weight. Using unique() or subsetting (x[1]) may be necessary.")

  if(length(index) > 1)
    stop("It's not possible to calculate multiple indexes with the same function call.")


  ## Actually calculate indexes
  if(index=="Cederholm"){
    # Cederholm
    (75000 + (glu[1]-glu[2]) * 1.15 * 180 * 0.19 * bw)/(120 * log(mean(glu) * mean(ins)))


  } else if(index == "Gutt"){
    # Gutt / ISI 0,120
    # glucose uptake rate in peripheral tissues
    m <- (75000 + ((glu[1] - glu[2]) * 0.19 * bw)) / 120

    # metabolic clearance rate
    mcr <- m/mean(glu)

    # insulin sensitivity index
    mcr/log(mean(ins))


  } else if(index == "Matsuda"){
    10000/sqrt(glu[1] * ins[1] * mean(glu) * mean(ins))


  } else if(index == "NEFA-ISI"){
    ## NEFA-ISI
    60*exp(3.853 - 0.9*log(bmi)
           -0.205*log(ins[1])
           -0.128*log(ins[2])
           -0.256*log(ins[3])
           -0.138*log(nefa[3])
    )

  } else if(index == "Stumvoll-ISI"){
    # Stumvoll-ISI
    0.226 - (0.0032 * bmi) - (0.0000645 * ins) - (0.00375 * glu)

  } else {
    # Stumvoll-MCR
    18.8 - (0.271 * bmi) - (0.0052 * ins) - (0.27 * glu)
  }

}

