#' Hides the cursor symbol
#'
#' Hides the cursor symbol

CRhide_mouse <- function(status = NULL) {
  
  if (isStatus(status)) {
    
    invisible( .Call("SDLhide_mouse", status, PACKAGE = "CREx") )
    
  } else {
    
    invisible( .Call("SDLhide_mouse", NULL, PACKAGE = "CREx") )
    
  }
}
