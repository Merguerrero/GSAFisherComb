\name{hist.GSAfisher.mult}
\alias{hist.GSAfisher.mult}
\title{
Function to plot an histogram and density plot.
}
\description{
Plot the result of a GSAfisher, when the imput is more than 1 pvalue set. 
}
\usage{
\method{hist}{GSAfisher.mult}(x, ...)
}
\arguments{
  \item{x}{
A GSAfisher.mult object.
}
  \item{...}{
further arguments and graphical parameters passed to plot.histogram and thence to title and axis (if plot = TRUE).
}
}
\value{
Display a plot.
}

\examples{
data(pvales.matrix)
pval.GSAobj<- loadGSAfisher(pvales.matrix)
res<-GSAfisher(pval.GSAobj)
hist(res)
}

