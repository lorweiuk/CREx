#' Load wav file
#'
#' Load wav file
#' param wav_list list of wav files previously loaded (possibly empty)
#' param wavfile wavfile to be loaded (full path)
#' return updated wav_list with loaded wav-file added

CRload_wav <- function(wav_list, wavfile, status = NULL) {
  
  out <- NULL
  
  if (isStatus(status)) {
    
    out <- .Call("SDLload_wav", wavfile, status, PACKAGE = "CREx")
    
  } else {
    
    out <- .Call("SDLload_wav", wavfile, NULL, PACKAGE = "CREx")
    
  }

  names(out) <- c("wavfile", "names", "valid")

  wav_list$wavfile <- c( wav_list$wavfile, out$wavfile )
  
	wav_list$names   <- c( wav_list$names, out$names)
	
	wav_list$valid   <- c( wav_list$valid, out$valid)
	
	return(wav_list)
}
