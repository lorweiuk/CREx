#' Draws point to renderer
#'
#' Draws point to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param point_list list defining a point (must contain elements x and y)

CRdraw_point <- function(graphics_list, point_list, status = NULL) {

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
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLdraw_point", graphics_list, point_list$x, point_list$y, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible( .Call("SDLdraw_point", graphics_list, point_list$x, point_list$y, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
