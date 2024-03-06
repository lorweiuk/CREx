#' Empty event queue
#'
#' Empties all pending events from event queue
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event

CRflush <- function(graphics_list, type = NULL, status = NULL) {
  
  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics_list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!is.null(type) && !type %in% c("key_down", "key_up", "mouse_button_down", "mouse_button_up", "mouse_motion", "mouse_wheel", "controller_axis_motion", "controller_button_down", "controller_button_up", "quit", "window_event")) {
      
      warning("Type to be flushed must be: key_down, key_up, mouse_button_down, mouse_button_up, mouse_motion, mouse_wheel, controller_axis_motion, controller_button_down, controller_button_up, quit, or window_event.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Type to be flushed must be: key_down, key_up, mouse_button_down, mouse_button_up, mouse_motion, mouse_wheel, controller_axis_motion, controller_button_down, controller_button_up, quit, or window_event.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      # all checks passed
      
      if (is.null(type)) {
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLflush", graphics_list, status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLflush", graphics_list, NULL, PACKAGE = "CREx") )
          
        }
        
      } else {
        
        type_i <- which(c("key_down", "key_up", "mouse_button_down", "mouse_button_up", "mouse_motion", "mouse_wheel", "controller_axis_motion", "controller_button_down", "controller_button_up", "quit", "window_event") == type)
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLflush_spec", graphics_list, type_i, status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLflush_spec", graphics_list, type_i, NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
