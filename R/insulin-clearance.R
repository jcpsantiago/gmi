
insulin_clearance <- function(cpeptide, insulin) {
      CPeptideAUC <-(((CPeptide0 + CPeptide30) / 2) * (0.5 - 0)) +
        (((CPeptide30 + CPeptide120) / 2) * (2 - 0.5))
      InsulinClearance <- CPeptideAUC / InsulinAUC
}
