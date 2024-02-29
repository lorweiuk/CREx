#' Set audio volume
#'
#' set audio volume

CRaudio_volume <- function(volume, channel) {
  
  if (!is.numeric(channel) || channel < 0 || channel %% 1 != 0)
    stop("Channel must be integer")
  
  out <- .Call("SDLaudio_volume", volume, channel, PACKAGE = "CREx")
  
  if (is.numeric(out)) {
    if (out == -1) {
      return(NULL)
    }
  }
  
  return(out)
}
