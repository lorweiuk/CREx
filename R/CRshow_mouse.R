#' Show cursor symbol
#'
#' Show cursor symbol again after it was hidden wiht CRhide_mouse()

CRshow_mouse <- function(status = NULL) {

  if (isStatus(status)) {
    
    invisible( .Call("SDLshow_mouse", status, PACKAGE = "CREx") )
    
  } else {
    
    invisible( .Call("SDLshow_mouse", NULL, PACKAGE = "CREx") )
    
  }
}
