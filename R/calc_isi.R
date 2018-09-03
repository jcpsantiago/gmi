#' Calculate insulin-sensitivity index
#' 
#' @param glu  An ordered vector of glucose values.
#' @param ins  An ordered vector of insulin values.
#' @param nefa An ordered vector of NEFA values.
#' @param bmi  Body-mass index.
#' @param body_weight Body weight in kg.
#' @param index Insulin sensitivity index as a string. This can be one of 
#'     "Cederholm", "Gutt" (aka "ISI 0,120"), "Matsuda", "NEFA-ISI", 
#'     "Stumvoll-ISI" or "Stumvoll-MCR".
#'
#' @return A double.
#' @export
#'
#' @examples
calc_isi <- function(glu = NULL, ins = NULL, nefa = NULL,
                     bmi = NULL, body_weight = NULL, index = NULL){
  
  ## only these indexes are currently implemented
  allowed_indexes <- c("FIRI", "HOMA-IR", "QUICKI", "QUICKI-R",
                       "Cederholm", "Gutt", "Matsuda", "NEFA-ISI", 
                       "Stumvoll-ISI", "Stumvoll-MCR")
  
  if(length(bmi) > 1)
    warning("Only the first value of bmi was used!")
  
  if(length(body_weight) > 1)
    warning("Only the first value of body_weight was used!")
  
  if(length(index) > 1)
    stop("Don't be greedy! Only one index per function call, please") 
  
  if(!(index %in% allowed_indexes))
    stop(index, " is not a valid index, or not yet implemented")
  
  ## some variables need to be numeric, or NULL if the index doesn't need it
  stopifnot(is_numeric_or_null(glu, ins, nefa, bmi, body_weight))
  

  switch(
    index,
    ## fasting-based
    FIRI           = firi_index(glu, ins),
    `HOMA-IR`      = homa_ir_index(glu, ins),
    QUICKI         = quicki_index(glu, ins),
    `QUICKI-R`     = revised_quicki_index(glu, ins, nefa),
    ## ogtt-based
    Cederholm      = cederholm_index(glu, ins, body_weight),
    Gutt           = gutt_index(glu, ins, body_weight),
    Matsuda        = matsuda_index(glu, ins),
    `NEFA-ISI`     = nefa_index(ins, bmi, nefa),
    `Stumvoll-ISI` = stumvoll_isi_index(glu, ins, bmi),
    `Stumvoll-MCR` = stumvoll_mcr_index(glu, ins, bmi)
    )
}
