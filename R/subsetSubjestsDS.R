subsetSubjestsDS=function(symbol, idx){
  symbol<- eval(parse(text=symbol), envir = parent.frame())
  idx <- as.integer(unlist(strsplit(idx, split=",")))
  rData=  symbol[idx, , drop=F]
  return(rData)
}

