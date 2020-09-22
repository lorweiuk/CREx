#' resume audio
#'
#' resume

CRaudio_resume <- function() {

  invisible( .Call("SDLaudio_resume", PACKAGE = "CREx") )
  
}
