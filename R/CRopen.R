#' Starts SDL, opens window
#'
#' Starts SDL, opens window, returns pointers to necessary SDL structures
#' param x upper-left x coordinate at which to open window (x, y, w, h all 0 opens full-screen window)
#' param y upper-left y coordinate at which to open window (x, y, w, h all 0 opens full-screen window)
#' param w width of window (x, y, w, h all 0 opens full-screen window)
#' param h height of window (x, y, w, h all 0 opens full-screen window)
#' return returns list of pointers to SDL structures needed to control graphics etc.

CRopen <- function(x=0, y=0, w=0, h=0, param=c()) {

  out <- .Call( "SDLopen", x, y, w, h, param, length(param), PACKAGE = "CREx" )
  
  if (is.numeric(out)) {
      if (out == -1) {
          return(NULL)
      }
  }
    
  names(out) <- c("window", "surface", "renderer", "event", "width", "height", "timer_resolution", "frame_duration")
  return(out)
}
