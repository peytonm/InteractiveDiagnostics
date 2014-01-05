.onLoad <- function(libname, pkgname) {
  # Since there's no way to explicitly pass variables to server.R
  # and ui.R, we'll use an environment in the package's namespace.
  assign("model.info", new.env(), envir=parent.env(environment()))
}