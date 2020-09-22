#' Set the Windows OS timer resolution

CRset_timer_resolution <- function(resolution) {

  if ( !is.numeric(resolution) ) {
    stop("Timer resolution must be numeric.")
  }
  
  resout <- .Call("SDLset_timer_resolution", resolution, PACKAGE = "CREx")
  
  if (is.numeric(out)) {
    if (resout == -1) {
      return(NULL)
    }
  }
  
  return(resout)
}
