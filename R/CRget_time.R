#' Get time in milliseconds
#'
#' Get time in milliseconds since system startup was called
#' return time in milliseconds since system startup was called

CRget_time <- function(status = NULL) {

  if (isStatus(status)) {
    
    return(.Call("SDLget_time", status, PACKAGE = "CREx"))
    
  } else {
    
    return(.Call("SDLget_time", NULL, PACKAGE = "CREx"))
    
  }
}
