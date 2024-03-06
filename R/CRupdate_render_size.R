#' Update size of rendering area
#'
#' Update width and height of rendering area (e.g. after resizing).

CRupdate_render_size <- function(graphics_list, status = NULL) {
  
  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics_list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    if (isStatus(status)) {
      
      return( .Call("SDLupdate_render_size", graphics_list, status, PACKAGE = "CREx") )
      
    } else {
      
      return( .Call("SDLupdate_render_size", graphics_list, NULL, PACKAGE = "CREx") )
      
    }
  }
}
