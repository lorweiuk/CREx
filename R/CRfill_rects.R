#' Draws multiple filled rectangles to the renderer
#'
#' Draws multiple filled rectangles to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param rect_list list defining one or more rectangles (must contain elements x, y, w, h; each a vector of length >= 1)

CRfill_rects <- function(graphics_list, rect_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isRectList(rect_list)) {
    stop("Input structure must be \"rect list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLfill_rects", graphics_list, rect_list$x, rect_list$y, rect_list$w, rect_list$h, length(rect_list$x), PACKAGE = "CREx") )
  
}
