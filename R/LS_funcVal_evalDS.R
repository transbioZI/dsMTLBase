LS_funcVal_evalDS <- function ( w, x, y){
  w <- as.numeric(unlist(strsplit(w, split=",")))
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  funcVal <- 0.5*mean((y - x %*% w)^2)
  return(funcVal)
}