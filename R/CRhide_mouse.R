#' Hides the cursor symbol
#'
#' Hides the cursor symbol

CRhide_mouse <- function() {

  invisible( .Call("SDLhide_mouse", PACKAGE = "SDLDLL") )
}
