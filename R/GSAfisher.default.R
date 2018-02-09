GSAfisher.default <-
function(p) {
  if (!inherits(p, "GSAfisher")) 
    stop("x must be an object of class 'GSAfisher'")
  if(any(!(p>0 & p<1)))
    stop("The input data must be real pvalues")
  data<-deparse(substitute(p))
  S<-(sum(log(p))*-2)
  k<-length(p)
  df<-k*2
  pval<- pchisq(S, df=df, lower.tail=F)
  #confidence interval.
  t<-list(DataName=data,FisherCombinedStatistic=S,Tests=k,Degreesoffreedom=df,p.value=pval)
  class(t)<-"GSAfisher"
  return(t)
}
