#' Pause audio
#'
#' pause

CRaudio_pause <- function(channel, status = NULL) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0) {
    
    warning("Channel must be non-negative integer.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Channel must be non-negative integer.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (isStatus(status)) {
        
      invisible( .Call("SDLaudio_pause", channel, status, PACKAGE = "CREx"))
  
    } else {
      
      invisible( .Call("SDLaudio_pause", channel, NULL, PACKAGE = "CREx"))
      
    }
  }
}
