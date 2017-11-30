#' Draws outline of a circle
#'
#' Draws outline of a circle defined by circle_list
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining a circle with elements centerx, centery defining center point, and radius

CRdraw_circle <- function(graphics_list, circle_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")

  }
  if (!isCircleList(circle_list)) {
    stop("Input structure must be \"circle list\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, PACKAGE = "SDLDLL") )
  
}
