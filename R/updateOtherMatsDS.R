updateOtherMatsDS=function(X, newH, W, Hv, lamb, Sp){
  H <-  as.numeric(unlist(strsplit(newH, split=",")))
  X <- eval(parse(text=X), envir = parent.frame())   
  W <- eval(parse(text=W), envir = parent.frame())   
  Hv <- eval(parse(text=Hv), envir = parent.frame())   
  lamb = as.numeric(lamb)
  Sp = as.numeric(Sp)
  
  H=matrix(H, nrow=nrow(X))
  
  HHt = H + Hv 
  HvtHv = t(Hv) %*% Hv  
  
  newW = (t(HHt) %*% X) / ( (t(HHt) %*% HHt + lamb*HvtHv) %*% W + Sp) * W
  newW[is.nan(newW)]=0
  
  W=newW
  WWt = W %*% t(W)
  newHv= (X %*% t(W)) / ( (H + (1+lamb) * Hv) %*% WWt) * Hv
  newHv[is.nan(newHv)]=0
  
  Vars=list(H=H, W=newW, Hv=newHv)
  
  return(Vars)
}