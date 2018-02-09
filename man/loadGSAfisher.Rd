\name{loadGSAfisher}
\alias{loadGSAfisher}
\title{
This function detects the type of input of GSAfisher
}
\description{
Function that reads the data before applying GSAfisher test.
}
\usage{
loadGSAfisher(obj)
}
\arguments{
  \item{obj}{
vector, list or matrix of the pvalues to analyze.
}
}

\value{
Returns the same object but of class "GSAfisher" or "GSAfisher.mult"
}


\examples{
#Load the test data
data(pvales.totest)
pvalues.GSAobject<-loadGSAfisher(pvales.totest)
}

