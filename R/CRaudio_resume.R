#' resume audio
#'
#' resume

CRaudio_resume <- function(channel) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0)
    stop("Channel must be integer")
  
  invisible( .Call("SDLaudio_resume", channel, PACKAGE = "CREx") )
  
}
