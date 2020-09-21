#' Draws filled circle to the renderer, with precision set by user
#'
#' Draws filled circle to the renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining circle (must contain elements centerx, centery, radius)
#' param n_points determines precision of circle

CRfill_circle_n <- function(graphics_list, circle_list, n_points) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
    
  }
  if (!isCircleList(circle_list)) {
    stop("Input structure must be \"circle list\".")
  }
  if (!is.numeric(n_points)) {
    stop("n_points must be numeric")
  }
  if (n_points < 1) {
    stop("n_points must be > 0.")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLfill_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, PACKAGE = "CREx") )
}
