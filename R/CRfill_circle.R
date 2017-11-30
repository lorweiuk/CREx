#' Draws filled circle to the renderer
#'
#' Draws filled circle to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining circle (must contain elements centerx, centery, radius)

CRfill_circle <- function(graphics_list, circle_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isCircleList(circle_list)) {
    stop("Input structure must be \"circle list\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLfill_circle", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, PACKAGE = "SDLDLL") )
  
}
