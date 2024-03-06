#' Clears the renderer
#'
#' Clears the renderer to the color last set with CRset_render_color()
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRrender_clear <- function(graphics_list, status = NULL) {
  # fill renderer with currently set render-color

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLrender_clear", graphics_list, status, PACKAGE = "CREx") )
      
    } else {
      
      invisible( .Call("SDLrender_clear", graphics_list, NULL, PACKAGE = "CREx") )
      
    }
  }
}
