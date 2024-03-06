#' Set width and height of window
#'
#' Will change width and height of window and update graphics structure to reflect new rendering area width and height.

CRset_window_size <- function(graphics_list, width, height, status = NULL) {
  
  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!is.numeric(width) || !is.numeric(height) || width < 0 || height < 0) {
      
      warning("Width and height must be numeric and non-negative.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Width and height must be numeric and non-negative.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        return( .Call("SDLset_window_size", graphics_list, width, height, status, PACKAGE = "CREx") )
        
      } else {
        
        return( .Call("SDLset_window_size", graphics_list, width, height, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
