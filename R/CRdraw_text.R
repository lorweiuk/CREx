#' Draws text to the renderer
#'
#' Draws text to the renderer at location x,y, using a font in fontp previously loaded with CRload_font()
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param text character vector giving the text to be drawn to renderer
#' param x x coordinate of upper-left corner of text
#' param y y coordinate of upper-left corner of text

CRdraw_text <- function(graphics_list, fontlist, index, text, point_list, wrap_length = NULL, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isPointList(point_list)) {
      
      warning("Input structure must be point list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be point list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (!isFontList(fontlist)) {
        
        warning("Input structure must be point list.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Input structure must be point list.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if (index > length(fontlist$fontfile)) {
          
          warning("Index exceeds length of fontlist.")
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLset_status", status, 0, "Index exceeds length of fontlist.", PACKAGE = "CREx") )
            
          }
          
        } else {
          
          if (!is.null(wrap_length) && (!is.numeric(wrap_length) || wrap_length < 0)) {
            
            warning("Wrap_length must be numeric and non-negative.")
            
            if (isStatus(status)) {
              
              invisible( .Call("SDLset_status", status, 0, "Wrap_length must be numeric and non-negative.", PACKAGE = "CREx") )
              
            }
            
          } else {
            
            graphics_list <- orderGraphicsList(graphics_list)
            
            if (is.null(wrap_length)) {
              
              if (isStatus(status)) {
                
                invisible( .Call("SDLdraw_text", graphics_list, fontlist$fontfile[[index]], text, point_list$x, point_list$y, -1, status, PACKAGE = "CREx") )
                
              } else {
                
                invisible( .Call("SDLdraw_text", graphics_list, fontlist$fontfile[[index]], text, point_list$x, point_list$y, -1, NULL, PACKAGE = "CREx") )
                
              }
              
            } else {
              
              if (isStatus(status)) {
                
                invisible( .Call("SDLdraw_text", graphics_list, fontlist$fontfile[[index]], text, point_list$x, point_list$y, wrap_length, status, PACKAGE = "CREx") )
                
              } else {
                
                invisible( .Call("SDLdraw_text", graphics_list, fontlist$fontfile[[index]], text, point_list$x, point_list$y, wrap_length, NULL, PACKAGE = "CREx") )
                
              }
            }
          }
        }
      }
    }
  }
}
