#' Draws multiple lines to renderer
#'
#' Draws multiple lines to renderer, end of line n is connected to beginning of line n+1
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param line_list list defining one or more lines (must contain elements x1, y1, x2, y2, each a vector of length >= 1)

CRdraw_lines <- function(graphics_list, line_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isLineList(line_list)) {
      
      warning("Input structure must be line list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be line list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (length(line_list$x1) != length(line_list$y1) || length(line_list$x2) != length(line_list$x1) || length(line_list$x1) != length(line_list$y2)) {
        
        warning("Vector elements of line list must be the same length.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Vector elements of line list must be the same length.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLdraw_lines", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, length(line_list$x1), status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLdraw_lines", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, length(line_list$x1), NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
