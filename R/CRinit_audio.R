#' Initializes audio system
#'
#' Initializes audio system, must be called before loading/playing wavs

CRinit_audio <- function(status = NULL) {

  if (isStatus(status)) {
    
    invisible( .Call("SDLinit_audio", status, PACKAGE = "CREx") )
    
  } else {
    
    invisible( .Call("SDLinit_audio", NULL, PACKAGE = "CREx") )
    
  }
}
