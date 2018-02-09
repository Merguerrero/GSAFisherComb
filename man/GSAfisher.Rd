\name{GSAfisher}
\alias{GSAfisher}
\alias{GSAfisher.default}
\alias{GSAfisher.GSAfisher.mult}
\title{
Function to perform a Fisher combined method.
}
\description{
Function to compute te statistics needed of a Fisher combined method. 
}
\usage{
GSAfisher(p)
}

\arguments{
  \item{p}{
A GSAfisher or GSAfisher.mult object.
}
}

\value{
An object of class GSAfisher or GSAfisher.mult,which is a list o data frame with the statistic value, the number of tests , the dgrees of freedom and the pvalue.
}

\seealso{
\code{\link{loadGSAfisher}}
}
\examples{
data(pvales.matrix)
pval.GSAobj<- loadGSAfisher(pvales.matrix)
res<-GSAfisher(pval.GSAobj)
}

