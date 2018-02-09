hist.GSAfisher.mult <-
function(x,...){
  hist(-log(x$pvalue))
  par(new = T)
  plot(density(-log(x$pvalue)), pch=16, axes=F, xlab=NA, ylab=NA, cex=1.2,col="red",main="")
}
