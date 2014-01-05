#' Generate interactive diagnostic plots
#' 
#' \code{iplot} generates interactive diagnostic plots for a given \code{lm} object.
#' 
#' @param x \code{lm} object
#' @param ... additional arguments passed to \code{runApp}
iplot <- function(x, ...) {
  model.info$model <- x
  model.info$model.name <- deparse(substitute(x))
  runApp(system.file("app", package="InteractiveDiagnostics"), ...)
}