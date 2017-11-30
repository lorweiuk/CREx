#' Initializes audio system
#'
#' Initializes audio system, must be called before loading/playing wavs

CRinit_audio <- function() {

  invisible( .Call("SDLinit_audio", PACKAGE = "SDLDLL") )
}
