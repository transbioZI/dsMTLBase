setMyServerDataDS=function(remoteKey, data){
  localKey<- eval(parse(text="localKey"), envir = parent.frame())
  data <- as.numeric(unlist(strsplit(data, split=",")))
  rData=  NULL
  
  if(as.character(localKey)==remoteKey){
    n=data[1]; data=data[-1]
    rData=matrix(data, nrow=n)
  } else{
    rData="Key not matched"
  }
  return(rData)
}