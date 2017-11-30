#' Presents everything drawn so far
#'
#' Presents everything drawn so far to the renderer. CRrender_present() waits for the next vertical synchronization before returning,
#' and returns the time in milliseconds when it returns.
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' return return times in milliseconds when the call to present returned; this can be used as best estimate when graphical information appeared on screen

CRrender_present <- function(graphics_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  out <- .Call("SDLrender_present", graphics_list, PACKAGE = "SDLDLL")

  return(out)
  
}
