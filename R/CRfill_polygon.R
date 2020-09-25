#' Draws filled polygon to the renderer
#'
#' Draws filled polygon to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param polygon_list list defining polygon (must contain elements x, y)

CRfill_polygon <- function(graphics_list, polygon_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
  }
  if (!isPolygonList(polygon_list)) {
    stop("Input structure must be \"polygon list\".")
  }
  if (length(polygon_list$x) < 1) {
    stop("number of polygon vertices must be > 0.")
  }
  if (length(polygon_list$y) < 1) {
    stop("number of polygon vertices must be > 0.")
  }
  if (length(polygon_list$x) != length(polygon_list$y)) {
    stop("vertex vectors x and y must be the same length.")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLfill_polygon", graphics_list, polygon_list$x, polygon_list$y, length(polygon_list$x), PACKAGE = "CREx") )
}
