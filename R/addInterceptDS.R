



addInterceptDS=function(x.mat, intercept=FALSE){
  x.mat <- eval(parse(text=x.mat), envir = parent.frame())
  x.mat=cbind(1,x.mat)
  if (!is.null(colnames(x.mat))){
    colnames(x.mat)[1]="intercept"
  }
  return(x.mat)
}