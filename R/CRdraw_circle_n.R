#' Draws outline of a circle, with precision set by user
#'
#' Draws outline of a circle defined by circle_list
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param circle_list list defining a circle with elements centerx, centery defining center point, and radius
#' param n_points determines precision of circle

CRdraw_circle_n <- function(graphics_list, circle_list, n_points) {

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
  invisible( .Call("SDLdraw_circle_n", graphics_list, circle_list$centerx, circle_list$centery, circle_list$radius, n_points, PACKAGE = "CREx") )
  
}
