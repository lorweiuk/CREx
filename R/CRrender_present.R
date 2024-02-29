#' Presents everything drawn so far
#'
#' Presents everything drawn so far to the renderer and returns the time in milliseconds when it returns.
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event.
#' return return times in milliseconds when the call to present returned.

CRrender_present <- function(graphics_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
   
  graphics_list = orderGraphicsList(graphics_list)
  out <- .Call("SDLrender_present", graphics_list, PACKAGE = "CREx")

  return(out)
  
}
