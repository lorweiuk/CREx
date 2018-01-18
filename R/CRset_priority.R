#' Sets the priority of process
#'
#' Draws outline of multiple rectangles to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param rect_list list defining one or more rectangles (must contain elements x, y, w, h, each a vector of length >= 1)

CRset_priority <- function(priority) {

  if (priority != 0 && priority != 1 && priority != 2 ) {
    stop("Priority must be either 0 (normal priority), 1 (high priority), or 2 (real-time priority).")
    
  }
  
  invisible( .Call("SDLset_priority", priority, PACKAGE = "SDLDLL") )
  
}
