#' Empty event queue
#'
#' Empties all pending events from event queue
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRflush <- function(graphics_list) {
  
  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  
  invisible( .Call("SDLflush", graphics_list, PACKAGE = "CREx") )

}
