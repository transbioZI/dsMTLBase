getMyServerDataDS=function(remoteKey, data){
  localKey<- eval(parse(text="localKey"), envir = parent.frame())
  data<- eval(parse(text=data), envir = parent.frame())   
  rData=  NULL
  
  if(as.character(localKey)==remoteKey){
    rData=data
  } else{
    rData="Key not matched"
  }
  
  return(rData)
}