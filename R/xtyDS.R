xtyDS = function(x, y){
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  return(base::t(x) %*% y)
}
