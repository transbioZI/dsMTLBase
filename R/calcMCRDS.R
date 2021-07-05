# calcMCRDS <- function ( ws, x, y){
#   ws <- as.numeric(unlist(strsplit(ws, split=",")))
#   nFeats=ws[1]
#   ws=ws[-1]; ws=matrix(ws, nrow=nFeats)
#   x <- eval(parse(text=x), envir = parent.frame())
#   y <- eval(parse(text=y), envir = parent.frame())
#   
#   yhat <- sign(x%*%ws)
#   yhat[yhat==0]=1
#   mcr=apply(yhat, 2, function(x)mean(x!=y))
#   
#   return(mcr)
# }
calcMCRDS <- function ( ws, x, y, average){
  ws <- as.numeric(unlist(strsplit(ws, split=",")))
  nFeats=ws[1]
  ws=ws[-1]; ws=matrix(ws, nrow=nFeats)
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  
  if(average){
    yhat <- rowMeans(1/(1+exp(-x%*%ws)))
    yhat=sign(yhat-0.5); yhat[yhat==0]=1
    mcr=mean(yhat!=y)
  } else{
    yhat <- 1/(1+exp(-x%*%ws))
    yhat=sign(yhat-0.5); yhat[yhat==0]=1
    mcr=apply(yhat, 2, function(x)mean(x!=y))
  }
  return(mcr)
}