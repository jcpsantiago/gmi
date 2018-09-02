#' Numeric or NULL objects
#'
#' @param ... R objects to check.
#'
#' @return a logical.
#'
#' @examples
is_numeric_or_null <- function(...){
  vars <- sapply(list(...), function(x) is.numeric(x) | is.null(x))
  
  ## are all variables true?
  all(vars)
}
