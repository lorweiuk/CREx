#' Presents everything drawn so far
#'
#' Presents everything drawn so far to the renderer and returns the time in milliseconds when it returns.
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event.
#' return return times in milliseconds when the call to present returned.

CRrender_present <- function(graphics_list, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLrender_present", graphics_list, status, PACKAGE = "CREx") )
      
    } else {
      
      invisible( .Call("SDLrender_present", graphics_list, NULL, PACKAGE = "CREx") )
      
    }
  }
}
