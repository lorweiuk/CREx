#' Set color in color_list to transparent for the image pointed to by image_list and index
#'
#' Set color in color_list to transparent for the image pointed to by image_list and index
#' image_list is a list with images loaded by CRload_image(), using transparency must first be allowed by calling CRallow_alpha()
#' index is the index of the image for which transparency will be changed
#' color_list a list defining a color in RGB, must contain element r, g, b (a is ignored)

CRcolor_to_transparent <- function(image_list, index, color_list, status = NULL) {
  
  if ( !isColorList(color_list) ) {
    
    warning("Input structure must be \"color list\".")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isImageList(image_list)) {
      
      warning("Input structure must be \"image list\".")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      
      if (index > length(image_list$imagefile)) {
        
        warning("Index is longer than \"image list\".")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLcolor_to_transparent", image_list$imagefile[[index]], color_list$r, color_list$g, color_list$b, status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLcolor_to_transparent", image_list$imagefile[[index]], color_list$r, color_list$g, color_list$b, NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
