#' Draws image to renderer
#'
#' Draws image previously loaded with CRload_image() to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param image_list list containing one or more images previously loaded with CRload_image(), must contain element imagefile
#' param index index of image in image_list to be drawn
#' param rect_list list defining rectangle where image should be drawn (must contain elements x, y, w, h)

CRdraw_image <- function(graphics_list, image_list, index, rect_list) {

  if (!isGraphicsList(graphics_list)) {
    stop("Input structure must be \"graphics list\".")
  } 
  
  if (!isImageList(image_list)) {
    stop("Input structure must be \"image list\".")
  }
  
  if (index > length(image_list$imagefile)) {
    stop("Index is out of range of image_list$imagefile.")
  }
  
  if (!isRectList(rect_list)) {
    stop("Input structure must be \"rect list\".")
  }

  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLdraw_image", graphics_list, image_list$imagefile[[index]], rect_list$x, rect_list$y, rect_list$w, rect_list$h, PACKAGE = "CREx") )

}
