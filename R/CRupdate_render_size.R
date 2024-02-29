#' Update size of rendering area
#'
#' Update width and height of rendering area (e.g. after resizing).

CRupdate_render_size <- function(graphics_list) {
  
  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)

  out <- .Call("SDLupdate_render_size", graphics_list, PACKAGE = "CREx")
  
  return(out)
}
