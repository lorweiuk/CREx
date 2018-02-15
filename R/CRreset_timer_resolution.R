#' Revert the Windows OS timer resolution

CRreset_timer_resolution <- function(resolution) {

  if ( !is.numeric(resolution) ) {
    stop("Timer resolution must be numeric.")
  }
  
  invisible( .Call("SDLreset_timer_resolution", resolution, PACKAGE = "SDLDLL") )
}
