#' Draws filled circle to the renderer, with precision set by user
#'
#' Draws filled circle to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining circle (must contain elements centerx, centery, radius)
#' param n_points determines precision of circle

CRfill_circle_n <- function(graphics_list, circle_list, n_points, status = NULL) {

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
        
      } else {
        
        if (n_points < 1) {
          
          warning("n_points must be > 0.")
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLset_status", status, 0, "n_points must be > 0.", PACKAGE = "CREx") )
            
          }
          
        } else {
          
          graphics_list <- orderGraphicsList(graphics_list)
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLfill_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, status, PACKAGE = "CREx") )
            
          } else {
            
            invisible( .Call("SDLfill_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, NULL, PACKAGE = "CREx") )
            
          }
        }
      }
    }
  }
}
