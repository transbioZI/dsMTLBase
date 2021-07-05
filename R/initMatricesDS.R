initMatricesDS <- function(rank, X, seedH) {
  rank <-  as.numeric(rank)
  X <- eval(parse(text=X), envir = parent.frame())
  
  nowX=nrow(X)
  ncolX=ncol(X)
  
  Vars=list();
  set.seed(seedH)
  Vars$H=matrix(data = runif(n=nowX*rank, min = 0, max = 2), nrow = nowX, ncol = rank)
  Vars$Hv=matrix(data = runif(n=nowX*rank, min = 0, max = 2), nrow = nowX, ncol = rank)
  Vars$W=matrix(data = runif(n=rank*ncolX, min = 0, max = 2), nrow = rank, ncol = ncolX)
  
  
  return(Vars)
}
