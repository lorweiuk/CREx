#' Pause audio
#'
#' pause

CRaudio_pause <- function() {

  invisible( .Call("SDLaudio_pause", PACKAGE = "SDLDLL") )
}
