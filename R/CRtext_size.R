#' Predicts dimensions of unwrapped text.
#'
#' Determines width and height of text when rendered (un-wrapped) using indexed font in fontlist.

CRtext_size <- function(fontlist, index, text) {

  if (!isFontList(fontlist)) {
    stop("Input structure must be \"point list\".")
  }
  
  if (index > length(fontlist$fontfile)) {
    stop("Index exceeds length of fontlist$fontfile.")
  }
  
  out <- .Call("SDLget_text_size", fontlist$fontfile[[index]], text, PACKAGE = "CREx")
  
  if (length(out) == 2) {
    names(out) <- c("width", "height")
  }
  
  return(out)
}
