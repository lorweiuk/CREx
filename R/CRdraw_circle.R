#' Draws outline of a circle
#'
#' Draws outline of a circle defined by circle_list
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining a circle with elements centerx, centery defining center point, and radius

CRdraw_circle <- function(graphics_list, circle_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isCircleList(circle_list)) {
      
      warning("Input structure must be circle list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be circle list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        invisible(.Call("SDLdraw_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible(.Call("SDLdraw_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, NULL, PACKAGE = "CREx") )
        
      }
      
    }
  }
}
