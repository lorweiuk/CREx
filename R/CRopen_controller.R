#' Open gamecontroller
#'
#' Open gamecontroller
#' param wav_list list of wav files previously loaded (possibly empty)
#' param wavfile wavfile to be loaded (full path)
#' return updated wav_list with loaded wav-file added

CRopen_controller <- function() {

  out <- .Call("SDLopen_controller", PACKAGE = "CREx")

  if (length(out) == 2)
    names(out) <- c("controller", "max_val")
  
	return(out)
}
