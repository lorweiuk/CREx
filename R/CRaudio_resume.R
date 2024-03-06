#' resume audio
#'
#' resume

CRaudio_resume <- function(channel, status = NULL) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0) {
    
    warning("Channel must be integer.")

    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (isStatus(status)) {
        
      invisible(.Call("SDLaudio_resume", channel, status, PACKAGE = "CREx"))
      
    } else {
      
      invisible(.Call("SDLaudio_resume", channel, NULL, PACKAGE = "CREx"))
      
    }
  }
}
  
  
