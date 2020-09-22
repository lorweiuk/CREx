#' Draws line to renderer
#'
#' Draws line to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param line_list list defining line (must contain elements x1, y1, x2, y2)

CRdraw_line <- function(graphics_list, line_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")

  }
  if (!isLineList(line_list)) {
    stop("Input structure must be \"line list\".")

  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_line", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, PACKAGE = "CREx") )
  
}
