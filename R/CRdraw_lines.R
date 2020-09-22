#' Draws multiple lines to renderer
#'
#' Draws multiple lines to renderer, end of line n is connected to beginning of line n+1
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param line_list list defining one or more lines (must contain elements x1, y1, x2, y2, each a vector of length >= 1)

CRdraw_lines <- function(graphics_list, line_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isLineList(line_list)) {
    stop("Input structure must be \"line list\".")
    
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_lines", graphics_list, line_list$x1, line_list$y1, line_list$x2, line_list$y2, length(line_list$x1), PACKAGE = "CREx") )
  
}
