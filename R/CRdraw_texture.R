#' Draws texture to the renderer
#'
#' Draws texture (or part of it, defined by texture_rect) to the renderer at location defined by target_rect, possibly rotated at angle around center_point
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param texturep pointer to texture, previously created with CRcreate_texture()
#' param texture_rect list defining rectangle of texture to be drawn (must contain elements x, y, w, h; default: whole texture is drawn)
#' param target_rect list defining where on renderer to draw texture (must contain elements x, y, w, h; default: whole renderer is filled)
#' param angle specifies rotation of drawn image, in degrees (default 0)
#' param center_point defines point around which to rotate (must contain elements x, y)

CRdraw_texture <- function(graphics_list, texture_list, index, texture_rect = list(), target_rect = list(), angle = 0, center_point = list(), status = NULL  ) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isTextureList(texture_list)) {
      
      warning("Input structure must be texture list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be texture list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (index > length(texture_list$texturefile)) {
        
        warning("Index is out of range of texture_list.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Index is out of range of texture_list.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if ( !is.null(names(texture_rect)) && !isRectList(texture_rect)) {
          
          warning("Texture rect must be null or rect list.")
          
          if (isStatus(status)) {
            
            invisible( .Call("SDLset_status", status, 0, "Texture rect must be null or rect list.", PACKAGE = "CREx") )
            
          }
          
        } else {
          
          if ( !is.null(names(target_rect)) && !isRectList(target_rect)) {
            
            warning("Target rect must be null or rect list.")
            
            if (isStatus(status)) {
              
              invisible( .Call("SDLset_status", status, 0, "Target rect must be null or rect list.", PACKAGE = "CREx") )
              
            }
            
          } else {
            
            if ( !is.null(names(center_point)) && !isPointList(center_point)) {
              
              warning("Center point must be null or point list.")
              
              if (isStatus(status)) {
                
                invisible( .Call("SDLset_status", status, 0, "Center point must be null or point list.", PACKAGE = "CREx") )
                
              }
              
            } else {
              
              if ( is.null(names(texture_rect)) ) {
                texture_rect$x = 0
                texture_rect$y = 0
                texture_rect$w = 0
                texture_rect$h = 0
              }
              
              if ( is.null(names(target_rect)) ) {
                target_rect$x = 0
                target_rect$y = 0
                target_rect$w = 0
                target_rect$h = 0
              }
              
              if ( is.null(names(center_point)) ) {
                center_point$x = 0
                center_point$y = 0
              }
              
              graphics_list <- orderGraphicsList(graphics_list)
              
              if (isStatus(status)) {
                
                invisible( .Call("SDLdraw_texture", graphics_list, texture_list$texturefile[[index]], texture_rect$x, texture_rect$y, texture_rect$w, texture_rect$h, target_rect$x, target_rect$y, target_rect$w, target_rect$h, angle, center_point$x, center_point$y, status, PACKAGE = "CREx") )
                
              } else {
                
                invisible( .Call("SDLdraw_texture", graphics_list, texture_list$texturefile[[index]], texture_rect$x, texture_rect$y, texture_rect$w, texture_rect$h, target_rect$x, target_rect$y, target_rect$w, target_rect$h, angle, center_point$x, center_point$y, NULL, PACKAGE = "CREx") )
                
              }
            }
          }
        }
      }
    }
  } 
}
