\name{plot.GSAfisher.mult}
\alias{plot.GSAfisher.mult}
\title{
A QQplot of the result for a GSAfisher.mult object.
}
\description{
Plots a QQplot of the result of GSAfisher against a chisq distribution with the same df of the input.
}
\usage{
\method{plot}{GSAfisher.mult}(x,...)
}
\arguments{
  \item{x}{
GSAfisher.mult object}
  \item{...}{
further arguments passed to or from other methods.
}
}


\examples{
data(pvales.matrix)
pval.GSAobj<- loadGSAfisher(pvales.matrix)
res<-GSAfisher(pval.GSAobj)
plot(res)
}