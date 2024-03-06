#' Draws outline of a circle, with precision set by user
#'
#' Draws outline of a circle defined by circle_list
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining a circle with elements centerx, centery defining center point, and radius
#' param n_points determines precision of circle

CRdraw_circle_n <- function(graphics_list, circle_list, n_points, status = NULL) {

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
      
      if (!is.numeric(n_points)) {
        
        warning("n_points must be numeric.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "n_points must be numeric.", PACKAGE = "CREx") )
          
        }
        
      } else if (n_points < 1) {
        
        warning("n_points must be > 0.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "n_points must be > 0.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLdraw_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLdraw_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
