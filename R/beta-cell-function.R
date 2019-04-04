
igi_ir <- function(glucose, insulin) {
  GlucoseDiff <- Glucose30 - Glucose0
  InsulinDiff <- Insulin30 - Insulin0
  # TODO: Figure out how to deal with negative values
  # Currently using absolute to reverse negative values
  # Plus glucose by 1 to get rid of zeros... better way
  (abs(InsulinDiff) / abs(GlucoseDiff + 1)) / HOMA
}

issi2 <- function(glucose, insulin) {
  (insulin_auc(insulin) / glucose_auc(glucose)) /
    matsuda_index(...)
}
