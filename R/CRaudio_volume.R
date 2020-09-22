#' Set audio volume
#'
#' set audio volume

CRaudio_volume <- function(volume) {

  out <- .Call("SDLaudio_volume", volume, PACKAGE = "CREx")
  
  if (is.numeric(out)) {
    if (out == -1) {
      return(NULL)
    }
  }
  
  return(out)
}
