GSAfisher.GSAfisher.mult <-
function(p) {
  if (!inherits(p, "GSAfisher.mult")) 
    stop("x must be an object of class 'GSAfisher.mult'")
  if (is.null(dim(p))){
    output <- data.frame( InputDataPos= numeric(), Statistical = numeric(), k = numeric(),
                          DegreesFreedom= numeric(), pvalue= numeric())
    c=0
    for (i in p){
      c=c+1
      if(any(!(i>0 & i<1)))
        warning("The element", c ," in the imput have a wrong pvalue",noBreaks. = TRUE)
      S<-(sum(log(i))*-2)
      k<-length(i)
      df<-k*2
      pval<- pchisq(S, df=df, lower.tail=F)
      #confidence interval.
      output[c,]<-c(c,S, k, df, pval)
    }
    
  }else{ ### Esto esta en proceso
    if(any(!(p>0 & p<1))){
      col<-which(!(p>0 & p<1),arr.ind = F)[,2]
      warning("The element ", col ," does not contain real pvalues" )
    }
    info<-apply(p,2,function(x) {x_gsa<-loadGSAfisher(x);GSAfisher(x_gsa)})
    name_GSA<-lapply(info, function(x) x$DataName)
    Stat<-lapply(info, function(x) x$FisherCombinedStatistic)
    K<-lapply(info, function(x) x$Tests)
    df<-lapply(info, function(x) x$Degreesoffreedom)
    pval<-lapply(info, function(x) x$p.value)
    output<-data.frame(InputDataPos= unlist(name_GSA) ,Statistical=unlist(Stat),
                        k= unlist(K), DegreesFreedom=unlist(df),pvalue=unlist(pval))
    }
  
class(output)<-c("GSAfisher.mult","data.frame")
return(output)
  }
