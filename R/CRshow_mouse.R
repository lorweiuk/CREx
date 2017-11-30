#' Show cursor symbol
#'
#' Show cursor symbol again after it was hidden wiht CRhide_mouse()

CRshow_mouse <- function() {

  invisible( .Call("SDLshow_mouse", PACKAGE = "SDLDLL") )
}
