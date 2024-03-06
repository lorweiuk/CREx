#' Set rendering blend mode
#'
#' Takes in graphics_list created by CRopen() and sets the blend mode for render drawing.
#' 
#' graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' mode is the desired blend mode ("none", "blend", "add", "mod")

CRset_blend_mode <- function(graphics_list, mode, status = NULL) {
  
  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!mode %in% c("none", "blend", "add", "mod")) {
      
      warning("Blendmode must be one of the following strings: none, blend, add, mod.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Blendmode must be one of the following strings: none, blend, add, mod.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      modeint <- which(mode == c("none", "blend", "add", "mod")) - 1
      
      graphics_list <- orderGraphicsList(graphics_list)
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_blend_mode", graphics_list, modeint, status, PACKAGE = "CREx") )
        
      } else {
        
        invisible( .Call("SDLset_blend_mode", graphics_list, modeint, NULL, PACKAGE = "CREx") )
        
      }
    }
  }
}
