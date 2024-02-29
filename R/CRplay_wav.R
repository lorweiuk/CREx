#' Play wav file
#'
#' Plays wav file previously loaded with CRload_wav()
#' param wav_list list containing wav-files loaded with CRload_wav(), including the one to be played (must contain element wavfile)
#' param index index of wav-file in wav_list to be played

CRplay_wav <- function(wav_list, index, channel) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0)
    stop("Channel must be integer")
  
  if (!isWavList(wav_list)) {
    stop("Input structure must be \"wav list\".")

  }
  
  if (index > length(wav_list$wavfile)){
    stop("Index is out of range of \"wav_list$wavfile\".")

  }
  
  invisible( .Call("SDLplay_wav", wav_list$wavfile[[index]], channel, PACKAGE = "CREx") )
  
}
