#' Allow alpha channel use
#'
#' Takes in graphics_list created by CRopen() and allows using alpha-values
#' for this renderer.
#' graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRallow_alpha <- function(graphics_list) {
  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")

  } else {
    graphics_list = orderGraphicsList(graphics_list)
    invisible( .Call("SDLallow_alpha", graphics_list, PACKAGE = "CREx") )
  }
}
