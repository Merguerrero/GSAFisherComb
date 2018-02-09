\name{summary.GSAfisher}
\alias{summary.GSAfisher}
\title{
Summary of the result of GSAfisher function.
}
\description{
Display the information of a GSAfisher test.
}
\usage{
\method{summary}{GSAfisher}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
A GSAfisher object.}
  \item{...}{
additional arguments affecting the summary produced.
}
}

\value{
A print of the summary of the test.
}

\seealso{
\code{\link{GSAfisher}}
}
\examples{
data(pvales.totest)
pval.GSAobj<- loadGSAfisher(pvales.totest)
res<-GSAfisher(pval.GSAobj)
summary(res)
}