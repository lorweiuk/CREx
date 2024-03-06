#' Draws outline of rectangle to renderer
#'
#' Draws outline of rectangle to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param rect_list list defining a rectangle (must contain elements x, y, w, h)

CRdraw_rect <- function(graphics_list, rect_list, status = NULL) {

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
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLdraw_rect", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible( .Call("SDLdraw_rect", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
