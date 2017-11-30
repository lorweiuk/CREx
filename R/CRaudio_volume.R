#' Set audio volume
#'
#' set audio volume

CRaudio_volume <- function(volume) {

  invisible( .Call("SDLaudio_volume", volume, PACKAGE = "SDLDLL") )
}
