#' Pause audio
#'
#' pause

CRaudio_pause <- function(channel) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0)
    stop("Channel must be integer")

  invisible( .Call("SDLaudio_pause", channel, PACKAGE = "CREx") )
  
}
