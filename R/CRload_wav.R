#' Load wav file
#'
#' Load wav file
#' param wav_list list of wav files previously loaded (possibly empty)
#' param wavfile wavfile to be loaded (full path)
#' return updated wav_list with loaded wav-file added

CRload_wav <- function(wav_list, wavfile) {

  out <- .Call("SDLload_wav", wavfile, PACKAGE = "SDLDLL")

  wav_list$wavfile <- c( wav_list$wavfile, out )
  wav_list$names   <- c( wav_list$names, as.character(wavfile))
  return(wav_list)
}
