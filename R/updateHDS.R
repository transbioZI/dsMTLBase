updateHDS <- function(X, H, W, Hv, Sp, lamb) {
  
  X<- eval(parse(text=X), envir = parent.frame())   
  W<- eval(parse(text=W), envir = parent.frame())   
  Hv<- eval(parse(text=Hv), envir = parent.frame())   
  H<- eval(parse(text=H), envir = parent.frame())   
  lamb = as.numeric(lamb)
  Sp = as.numeric(Sp)
  
  X=as.matrix(X)
  updateH1  = (X %*% t(W))*H
  updateH2 = (H + Hv) %*% (W %*% t(W))
  
  Ht = H + Hv

  frob_c = norm(  (X - (Ht %*% W)), type = "F"   )^2
  pen_c = lamb*norm((Hv %*% W), type = "F")^2  
  sparse_c = Sp * sum(abs(W)) 
  
  
  return(list(updateH1, updateH2, frob_c, pen_c, sparse_c))
}