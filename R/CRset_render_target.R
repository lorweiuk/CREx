#' Change rendering target
#'
#' Change rendering target from screen's renderer to some texture; use CRreset_render_target() to return to screen's renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param texture_list list of textures previously created with CRcreate_texture()
#' param index index of texture in texture_list to be set as render target

CRset_render_target <- function(graphics_list, texture_list, index, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if ( !isTextureList(texture_list)) {
      
      warning("Input structure must be texture list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be texture list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if ( index > length(texture_list$texturefile)) {
        
        warning("Index out of range of texture_list.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Index out of range of texture_list.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        graphics_list <- orderGraphicsList(graphics_list)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_render_target_texture", graphics_list, texture_list$texturefile[[index]], status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLset_render_target_texture", graphics_list, texture_list$texturefile[[index]], NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
