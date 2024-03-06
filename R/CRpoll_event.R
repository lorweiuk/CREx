#' Polls next event in event queue
#'
#' Polls next event in event queue
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' return returns list of data specifying response polled (list is null if no event to polled)

CRpoll_event <- function(graphics_list, status = NULL) {
  # polls the event queue for incoming responses

  # distinguish type of reaction (key,mouse,etc.) by $type
  # distinguish specific reaction by code (which key was pressed? which mouse button pressed?)
  # keycodes can be looked up at https://wiki.libsdl.org/SDLKeycodeLookup
  # or converted in R using intToUtf8()
  # mouse button code 1 = left button, 2 = middle button, 3 = right button
  # mouse motion is always code == 1, x and y indicate x and y coordinates
  # code -1 means quit-X was pressed

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    out <- NULL
    
    if (isStatus(status)) {
      
      out <- .Call("SDLpoll_event", graphics_list, status, PACKAGE = "CREx")
      
    } else {
      
      out <- .Call("SDLpoll_event", graphics_list, NULL, PACKAGE = "CREx")
      
    }
    
    if (!is.null(out)) {
      
      names(out) <- c("type", "code", "label", "state", "val", "x", "y", "timestamp")
      
    }
    
    return(out)
    
  }
}
