#' Open gamecontroller
#'
#' Open gamecontroller
#' param wav_list list of wav files previously loaded (possibly empty)
#' param wavfile wavfile to be loaded (full path)
#' return updated wav_list with loaded wav-file added

CRopen_controller <- function(status = NULL) {
  
  out <- NULL
  
  if (isStatus(status)) {
    
    out <- .Call("SDLopen_controller", status, PACKAGE = "CREx")
    
  } else {
    
    out <- .Call("SDLopen_controller", NULL, PACKAGE = "CREx")
    
  }

  names(out) <- c("controller", "max_val", "valid")
  
	return(out)
  
}
