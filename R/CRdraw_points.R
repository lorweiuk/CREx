#' Draws multiple points to renderer
#'
#' Draws multiple points to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param point_list list defining one or more points (must contain elements x and y, each a vector of length >= 1)

CRdraw_points <- function(graphics_list, point_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if ( !isPointList(point_list) ) {
      
      warning("Input structure must be point list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be point list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (length(point_list$x) != length(point_list$y)) {
        
        warning("Vector elements of point list must be the same length.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Vector elements of point list must be the same length.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLdraw_points", graphics_list, point_list$x, point_list$y, length(point_list$x), status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLdraw_points", graphics_list, point_list$x, point_list$y, length(point_list$x), NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
