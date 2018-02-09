summary.GSAfisher <-
function(object, ...) {
  cat("Fisher combined method","\n")
  cat("\n")
  cat("Imput data:", object$DataName,"\n")
  cat("X:",object$FisherCombinedStatistic, "Df:", object$Degreesoffreedom, "P.value", object$p.value, "\n")
  cat("Alternative Hypotesis: There is no global effect, ","\n")
}
