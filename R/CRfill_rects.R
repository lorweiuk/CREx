#' Draws multiple filled rectangles to the renderer
#'
#' Draws multiple filled rectangles to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param rect_list list defining one or more rectangles (must contain elements x, y, w, h; each a vector of length >= 1)

CRfill_rects <- function(graphics_list, rect_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isRectList(rect_list)) {
      
      warning("Input structure must be rect list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be rect list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (length(rect_list$x) != length(rect_list$y) || length(rect_list$x) != length(rect_list$w) || length(rect_list$x) != length(rect_list$h)) {
        
        warning("Vector elements of rect list must be the same length.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Vector elements of rect list must be the same length.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLfill_rects", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, length(rect_list$x), status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLfill_rects", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, length(rect_list$x), NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
