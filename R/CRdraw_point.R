#' Draws point to renderer
#'
#' Draws point to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param point_list list defining a point (must contain elements x and y)

CRdraw_point <- function(graphics_list, point_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")

  }
  if ( !isPointList(point_list) ) {
    stop("Input structure must be \"point list\".")

  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_point", graphics_list, point_list$x, point_list$y, PACKAGE = "SDLDLL") )
  
}
