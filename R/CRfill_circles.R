#' Draws filled circles to the renderer
#'
#' Draws filled circles to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circles_list list defining circle (must contain elements centerx, centery, radius)

CRfill_circles <- function(graphics_list, circles_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isCircleList(circles_list)) {
    stop("Input structure must be \"circle list\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLfill_circles", graphics_list, circles_list$centerx, circles_list$centery, circles_list$radius, length(circles_list$centerx), PACKAGE = "CREx") )
  
}
