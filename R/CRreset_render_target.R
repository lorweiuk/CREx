#' Resets rendering target to screen's renderer
#'
#' Resets rendering target to screen's renderer (usually after it was set to some texture before using CRset_render_target())
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRreset_render_target <- function(graphics_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLset_render_target_reset", graphics_list, PACKAGE = "SDLDLL") )
  
}
