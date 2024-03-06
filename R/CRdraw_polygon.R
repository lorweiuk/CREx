#' Draws polygon to the renderer
#'
#' Draws polygon to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param polygon_list list defining polygon (must contain elements x, y)

CRdraw_polygon <- function(graphics_list, polygon_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isPolygonList(polygon_list)) {
      
      warning("Input structure must be polygon list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be polygon list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (length(polygon_list$x) < 1) {
        
        warning("Number of polygon vertices must be > 0.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Number of polygon vertices must be > 0.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if (length(polygon_list$y) < 1) {
          
          warning("Number of polygon vertices must be > 0.")
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLset_status", status, 0, "Number of polygon vertices must be > 0.", PACKAGE = "CREx") )
            
          }
          
        } else {
          
          if (length(polygon_list$x) != length(polygon_list$y)) {
            
            warning("Vertex vectors x and y must be the same length.")
            
            if (isStatus(status)) {
              
              invisible( .Call("SDLset_status", status, 0, "Vertex vectors x and y must be the same length.", PACKAGE = "CREx") )
              
            }
  
          } else {
            
            graphics_list <- orderGraphicsList(graphics_list)
            
            if (isStatus(status)) {
              
              invisible( .Call("SDLdraw_polygon", graphics_list, polygon_list$x, polygon_list$y, length(polygon_list$x), status, PACKAGE = "CREx") )
              
            } else {
              
              invisible( .Call("SDLdraw_polygon", graphics_list, polygon_list$x, polygon_list$y, length(polygon_list$x), NULL, PACKAGE = "CREx") )
              
            }
          }
        }
      }
    }
  }
}
