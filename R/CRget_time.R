#' Get time in milliseconds
#'
#' Get time in milliseconds since CRopen() was called
#' return time in milliseconds since CRopen() was called

CRget_time <- function() {

  out <- .Call("SDLget_time", PACKAGE = "SDLDLL")
  return(out)
}
