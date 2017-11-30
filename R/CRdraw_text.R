#' Draws text to the renderer
#'
#' Draws text to the renderer at location x,y, using a font in fontp previously loaded with CRload_font()
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param text character vector giving the text to be drawn to renderer
#' param x x coordinate of upper-left corner of text
#' param y y coordinate of upper-left corner of text

CRdraw_text <- function(graphics_list, fontlist, index, text, point_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isPointList(point_list)) {
    stop("Input structure must be \"point list\".")
    
  }
  if (!isFontList(fontlist)) {
    stop("Input structure must be \"point list\".")
        
  }
  if (index > length(fontlist$fontfile)) {
    stop("Index exceeds length of fontlist$fontfile.")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_text", graphics_list, fontlist$fontfile[[index]], text, point_list$x, point_list$y, PACKAGE = "SDLDLL") )
  
}
