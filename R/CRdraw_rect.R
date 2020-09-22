#' Draws outline of rectangle to renderer
#'
#' Draws outline of rectangle to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param rect_list list defining a rectangle (must contain elements x, y, w, h)

CRdraw_rect <- function(graphics_list, rect_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")

  }
  if (!isRectList(rect_list)) {
    stop("Input structure must be \"rect list\".")

  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_rect", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, PACKAGE = "CREx") )
  
}