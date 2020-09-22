#' Clears the renderer
#'
#' Clears the renderer to the color last set with CRset_render_color()
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRrender_clear <- function(graphics_list) {
  # fill renderer with currently set render-color

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLrender_clear", graphics_list, PACKAGE = "CREx") )
  
}
