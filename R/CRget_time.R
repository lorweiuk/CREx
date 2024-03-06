#' Get time in milliseconds
#'
#' Get time in milliseconds since system startup was called
#' return time in milliseconds since system startup was called

CRget_time <- function(status = NULL) {

  if (isStatus(status)) {
    
    invisible(.Call("SDLget_time", status, PACKAGE = "CREx"))
    
  } else {
    
    invisible(.Call("SDLget_time", NULL, PACKAGE = "CREx"))
    
  }
}
