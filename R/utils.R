
mgdl_to_mmoll <- function(mgdl) {
  # Ref: https://www.diabetes.co.uk/blood-sugar-converter.html
  mgdl / 18
}

microU_to_pmoll <- function(microU) {
  # Ref: http://care.diabetesjournals.org/content/33/6/e83
  microU * 6
}

# TODO: Function to convert from wide form to long form
# Only as a utility function though.
wide_to_long <- function(vector_list) {
  # Take a list of vectors for glucose or insulin

  # - Convert to dataframe
  # - Create Obs ID column for conversion
  # - Gather, excluding ID
  # - Split long variables into variable and time
  # - Arrange by ID, variable, and time
}

glucose_wide_to_long <- function(glucose_list) {
  wide_to_long(vector_list = glucose_list)
}

insulin_wide_to_long <- function(glucose_list) {
  wide_to_long(vector_list = glucose_list)
}
