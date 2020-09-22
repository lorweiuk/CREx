#' Waits for a number of milliseconds
#'
#' Waits for a specified number of milliseconds; returns time in milliseconds (since call to CRopen) when wait ended
#' param ms time in milliseconds for which to wait

CRwait_ms <- function(ms) {

  invisible( .Call("SDLwait", ms, PACKAGE = "CREx") )
}
