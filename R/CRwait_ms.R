#' Waits for a number of milliseconds
#'
#' Waits for a specified number of milliseconds; returns time in milliseconds (since call to CRopen) when wait ended
#' param ms time in milliseconds for which to wait

CRwait_ms <- function(ms, status = NULL) {

  if (isStatus(status)) {
    
    invisible( .Call("SDLwait", ms, status, PACKAGE = "CREx") )
    
  } else {
    
    invisible( .Call("SDLwait", ms, NULL, PACKAGE = "CREx") )
    
  }
}
