#' Draws filled circles to the renderer
#'
#' Draws filled circles to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circles_list list defining circle (must contain elements centerx, centery, radius)

CRfill_circles <- function(graphics_list, circles_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isCircleList(circles_list)) {
      
      warning("Input structure must be circles list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be circles list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (length(circles_list$centerx) != length(circles_list$centery) || length(circles_list$centerx) != length(circles_list$radius)) {
        
        warning("Vector elements of circles list must be the same length.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Vector elements of circles list must be the same length.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLfill_circles", graphics_list, circles_list$centerx, circles_list$centery, circles_list$radius, length(circles_list$centerx), status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLfill_circles", graphics_list, circles_list$centerx, circles_list$centery, circles_list$radius, length(circles_list$centerx), NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
