#' Play wav file
#'
#' Plays wav file previously loaded with CRload_wav()
#' param wav_list list containing wav-files loaded with CRload_wav(), including the one to be played (must contain element wavfile)
#' param index index of wav-file in wav_list to be played

CRplay_wav <- function(wav_list, index, channel, status = NULL) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0) {
    
    warning("Channel must be integer.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Channel must be integer.", PACKAGE = "CREx") )
      
    }
    
  } else {
    
    if (!isWavList(wav_list)) {
      
      warning("Input structure must be wav list.")
      
      if (isStatus(status)) {
        
        invisible( .Call("SDLset_status", status, 0, "Input structure must be wav list.", PACKAGE = "CREx") )
        
      }
      
    } else {
      
      if (index > length(wav_list$wavfile)){
        
        warning("Index is out of range of wav_list.")
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLset_status", status, 0, "Index is out of range of wav_list.", PACKAGE = "CREx") )
          
        }
        
      } else {
        
        if (isStatus(status)) {
          
          invisible( .Call("SDLplay_wav", wav_list$wavfile[[index]], channel, status, PACKAGE = "CREx") )
          
        } else {
          
          invisible( .Call("SDLplay_wav", wav_list$wavfile[[index]], channel, NULL, PACKAGE = "CREx") )
          
        }
      }
    }
  }
}
