#' Get time in milliseconds
#'
#' Get time in milliseconds since system startup was called
#' return time in milliseconds since system startup was called

CRget_time <- function() {

  out <- .Call("SDLget_time", PACKAGE = "CREx")
  
  return(out)
}
