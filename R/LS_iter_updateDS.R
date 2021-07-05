LS_iter_updateDS <- function( w, x, y){
  w <- as.numeric(unlist(strsplit(w, split=",")))
  x <- eval(parse(text=x), envir = parent.frame())
  y <- eval(parse(text=y), envir = parent.frame())
  y_res = x %*% w - y
  grad_w <-  base::t(x) %*% y_res/nrow(x) 
  funcVal <- 0.5 * mean((y_res)^2)
  
  ###############Caution: After this option was enabled, the gradient was rejected to return when the coefficient
  ###############         vecter contained more non-zero values than the number of subject size.This would improve 
  ###############         the security level of the model. However, if such "rejection" happen, the client side would crash.
  ###############         Therefore, when the server administrator enabled this feature, please select a large enough lambda 
  ###############         in the client side
  #if (sum(w!=0)>nrow(x)) grad_w="the number of coefficients larger than the number of subjects"
  return(list(grad_w, funcVal))
}