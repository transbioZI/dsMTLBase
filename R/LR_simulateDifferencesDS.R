################################################################################
#
# Package Name: dsMTLBase
# Description: The server-side functions of dsMTL
#
# dsMTL - a computational framework for privacy-preserving, distributed 
#   multi-task machine learning
# Copyright (C) 2021  Han Cao (han.cao@zi-mannheim.de)
# All rights reserved.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
################################################################################




################################################################################
#' @title Computes the gradient and function value of logistic loss based on the removal of one data point from the original data. Used for sensitivity analyses required for the implementation of differential privacy.
#' @description Calculate the gradient and function value of logistic loss of a given point based on the removal of one data point from the original data. Used for sensitivity analyses required for the implementation of differential privacy.
#' @param w  The current estimate of coefficient vector
#' @param x  The design matrix    
#' @param y  The label vector 

#' @return The gradient and function value of logistic loss based on the removal of one data point from the original data
#' @details The current estimate of w was sent to target server and applied on {x,y}.

#' @export  
#' @author Roman Schefzik
################################################################################




LR_simulateDifferencesDS <- function(w, x, y) {
  
  ###calculate values with one row removed

    w <- as.numeric(unlist(strsplit(w, split=",")))
    x <- eval(parse(text=x), envir = parent.frame())
    y <- eval(parse(text=y), envir = parent.frame())
    
    nRemove <- 1
    rowsToRemove <- sample(1:nrow(x), nRemove)
    xModified <- x[-rowsToRemove, ]
    yModified <- y[-rowsToRemove]
    
    # Recalculate function value and gradient without the removed row
    weight <- 1 / length(yModified)
    l <- -yModified * (xModified %*% w)
    lp <- l
    lp[lp < 0] <- 0
    funcVal <- sum(weight * (log(exp(-lp) + exp(l - lp)) + lp))
    b <- (-weight * yModified) * (1 - 1 / (1 + exp(l)))
    grad_w <- (t(xModified) %*% b)
    
    gradWsRemoved<-list(grad_w = grad_w, funcVal = funcVal)
  
  return(gradWsRemoved)
}


