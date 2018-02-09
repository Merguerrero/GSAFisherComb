plot.GSAfisher.mult <-
function(x, ...){
  options(warn = -1)
  qqplot(-log(x$pvalue),rchisq(nrow(x),df=x$DegreesFreedom[1]),xlab="-log(Pvalue)",ylab="-log(distribution)",main="QQ-plot of the GSAfisher test") 
  qqline(-log(x$pvalue),rchisq(nrow(x),df=x$DegreesFreedom[1]),col=2,distribution = function(p) qchisq(p, df = x$DegreesFreedom[1]))
}
