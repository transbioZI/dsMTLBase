calcMSEDS <- function ( ws, x, y, average){
  ws <- as.numeric(unlist(strsplit(ws, split=",")))
  nFeats=ws[1]
  ws=ws[-1]; ws=matrix(ws, nrow=nFeats)
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  if(average){
    yhat <- rowMeans(x%*%ws)
    mse=colMeans((yhat -y)^2)
  } else{
    yhat <- x%*%ws
    mse=apply(yhat, 2, function(x)mean((x-y)^2))
  }
  
  return(mse )
}