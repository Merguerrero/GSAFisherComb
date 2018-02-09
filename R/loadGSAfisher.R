loadGSAfisher <-
function(obj){
  ifelse(class(obj)== "numeric",class(obj)<-"GSAfisher",class(obj)<-"GSAfisher.mult")
  #cat("Object of class:", "\n", class(obj))
  return(obj)
}
