LR_funcVal_evalDS <- function ( w, x, y){
  w <- as.numeric(unlist(strsplit(w, split=",")))
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  l <- - y*(x %*% w)
  lp <- l
  lp[lp<0] <- 0
  return(mean( log( exp(-lp) +  exp(l-lp) ) + lp ))
}