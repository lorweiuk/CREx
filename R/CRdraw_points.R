#' Draws multiple points to renderer
#'
#' Draws multiple points to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param point_list list defining one or more points (must contain elements x and y, each a vector of length >= 1)

CRdraw_points <- function(graphics_list, point_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if ( !isPointList(point_list) ) {
    stop("Input structure must be \"point list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_points", graphics_list, point_list$x, point_list$y, length(point_list$x), PACKAGE = "CREx") )
  
}
