#' Empty event queue
#'
#' Empties all pending events from event queue
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRflush <- function() {
  
  invisible( .Call("SDLflush", PACKAGE = "CREx") )

}
