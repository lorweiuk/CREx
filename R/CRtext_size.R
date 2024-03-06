#' Predicts dimensions of unwrapped text.
#'
#' Determines width and height of text when rendered (un-wrapped) using indexed font in fontlist.

CRtext_size <- function(fontlist, index, text, status = NULL) {

  if (!isFontList(fontlist)) {
    
    warning("Input structure must be point list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be point list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (index > length(fontlist$fontfile)) {
      
      warning("Index exceeds length of fontlist.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Index exceeds length of fontlist.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      out <- NULL
      
      if (isStatus(status)) {
        
        out <- .Call("SDLget_text_size", fontlist$fontfile[[index]], text, status, PACKAGE = "CREx")
        
      } else {
        
        out <- .Call("SDLget_text_size", fontlist$fontfile[[index]], text, NULL, PACKAGE = "CREx")
        
      }
      
      names(out) <- c("width", "height", "valid")
      
      return(out)
      
    }
  }
}
