.residuals.vs.fitted <- function(model) {
  mapply(function(x, y) c(x=x, y=y), residuals(model), fitted(model),
         SIMPLIFY=FALSE, USE.NAMES=FALSE)
}

.normal.qq <- function(model) {
  qq <- qqnorm(residuals(model), plot.it=FALSE)
  mapply(function(x, y) c(x=x, y=y), qq$x, qq$y,
         SIMPLIFY=FALSE, USE.NAMES=FALSE)
}

.DIAGNOSTICS <- list("Residuals vs. Fitted"=.residuals.vs.fitted,
                     "Normal QQ Plot"=.normal.qq)