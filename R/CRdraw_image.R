#' Draws image to renderer
#'
#' Draws image previously loaded with CRload_image() to renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param image_list list containing one or more images previously loaded with CRload_image(), must contain element imagefile
#' param index index of image in image_list to be drawn
#' param rect_list list defining rectangle where image should be drawn (must contain elements x, y, w, h)

CRdraw_image <- function(graphics_list, image_list, index, rect_list, status = NULL) {

  if (!isGraphicsList(graphics_list)) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isImageList(image_list)) {
      
      warning("Input structure must be image list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be image list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (index > length(image_list$imagefile)) {
        
        warning("Index is out of range of image_list.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Index is out of range of image_list.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if (!isRectList(rect_list)) {
          
          warning("Input structure must be rect list.")
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLset_status", status, 0, "Input structure must be rect list.", PACKAGE = "CREx") )
            
          }
          
        } else {
          
          graphics_list <- orderGraphicsList(graphics_list)
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLdraw_image", graphics_list, image_list$imagefile[[index]], rect_list$x, rect_list$y, rect_list$w, rect_list$h, status, PACKAGE = "CREx") )
            
          } else {
            
            invisible( .Call("SDLdraw_image", graphics_list, image_list$imagefile[[index]], rect_list$x, rect_list$y, rect_list$w, rect_list$h, NULL, PACKAGE = "CREx") )
            
          }
        }
      }
    }
  }
}
