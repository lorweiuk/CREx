#' Polls next event in event queue
#'
#' Polls next event in event queue
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' return returns list of data specifying response polled (list is null if no event to polled)

CRpoll_event <- function(graphics_list) {
  # polls the event queue for incoming repsonses

  # all outputs being 0 means nothing happened
  # distinguish type of reaction (key,mouse,etc.) by $type
  # distinguish specific reaction by code (which key was pressed? which mouse button pressed?)
  # keycodes can be look up at https://wiki.libsdl.org/SDLKeycodeLookup
  # mouse button code 1 = left button, 2 = middle button, 3 = right button
  # mouse motion is always code == 1, x and y indicate x and y coordinates
  # code -1 means quit-X was pressed

  # types:
  # 1025 mouse button down
  # 1026 mouse button up
  # 1024 mouse motion
  # 771 key down
  # 769 key up
  # 768 key repeat

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")

  }
  
  graphics_list = orderGraphicsList(graphics_list)
  out <- .Call("SDLpoll_event", graphics_list, PACKAGE = "SDLDLL")
  if (!is.null(out)) {
      names(out) <- c("type", "code", "x", "y", "timestamp")
  }

  return(out)
  
}
