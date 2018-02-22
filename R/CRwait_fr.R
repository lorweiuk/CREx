#' Wait for a number of frames
#'
#' Wait for a number of frames; works by refreshing the screen fr times, so everything drawn since previous refresh will be shown by CRwait_fr()
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param fr number of frames to be waited
#' return returns time in milliseconds when wait ended


CRwait_fr <- function(graphics_list, fr) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  for (i in 1:fr) {
    out <- .Call("SDLrender_present", graphics_list, 0, PACKAGE = "SDLDLL")
  }
  return(out)
  
}
