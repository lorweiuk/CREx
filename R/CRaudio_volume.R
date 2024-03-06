#' Set audio volume
#'
#' set audio volume

CRaudio_volume <- function(volume, channel, status = NULL) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0) {
    
    warning("Channel must be integer.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (isStatus(status)) {
        
      invisible(.Call("SDLaudio_volume", volume, channel, status, PACKAGE = "CREx"))
      
    } else {
      
      invisible(.Call("SDLaudio_volume", volume, channel, NULL, PACKAGE = "CREx"))
      
    }
  }
}
