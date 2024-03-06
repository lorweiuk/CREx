#' Resets rendering target to screen's renderer
#'
#' Resets rendering target to screen's renderer (usually after it was set to some texture before using CRset_render_target())
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRreset_render_target <- function(graphics_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_render_target_reset", graphics_list, status, PACKAGE = "CREx") )
      
    } else {
      
      invisible( .Call("SDLset_render_target_reset", graphics_list, NULL, PACKAGE = "CREx") )
      
    }
  }
}
