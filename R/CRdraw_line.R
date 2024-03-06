#' Draws line to renderer
#'
#' Draws line to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param line_list list defining line (must contain elements x1, y1, x2, y2)

CRdraw_line <- function(graphics_list, line_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isLineList(line_list)) {
      
      warning("Input structure must be line list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be line list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLdraw_line", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible( .Call("SDLdraw_line", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
