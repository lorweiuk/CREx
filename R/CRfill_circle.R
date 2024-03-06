#' Draws filled circle to the renderer
#'
#' Draws filled circle to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining circle (must contain elements centerx, centery, radius)

CRfill_circle <- function(graphics_list, circle_list, status = NULL) {

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
        
        invisible( .Call("SDLfill_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible( .Call("SDLfill_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
