#' Set width and height of window
#'
#' Will change width and height of window and update graphics structure to reflect new rendering area width and height.

CRset_window_size <- function(graphics_list, width, height) {
  
  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  
  if (!is.numeric(width) || !is.numeric(height) || width < 0 || height < 0)
    stop("Width and height must be numeric and non-negative.")
  
  graphics_list = orderGraphicsList(graphics_list)

  out <- .Call("SDLset_window_size", graphics_list, width, height, PACKAGE = "CREx")
  
  return(out)
}
