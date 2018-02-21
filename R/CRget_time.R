#' Get time in milliseconds
#'
#' Get time in milliseconds since system startup was called
#' return time in milliseconds since system startup was called

CRget_time <- function(graphics_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  out <- .Call("SDLget_time", graphics_list, PACKAGE = "SDLDLL")
  return(out)
}
