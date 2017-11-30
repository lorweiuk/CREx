#' Set color in color_list to transparent for the surface pointed to by surfacep
#'
#' Set color in color_list to transparent for the surface pointed to by surfacep
#' surfacep is usually an image loaded with CRload_image(), using transparency must first be allowed by calling CRallow_alpha()
#' surfacep a pointer to a surface, usually an image previously returned by CRload_image()
#' color_list a list defining a color in RGB, must contain element r, g, b (a is ignored)

CRcolor_to_transparent <- function(surfacep, color_list) {
  if ( !isColorList(color_list) ) {
    stop("Input structure must be \"color list\".")
    
  } else {
    invisible( .Call("SDLcolor_to_transparent", surfacep, color_list$r, color_list$g, color_list$b, PACKAGE = "SDLDLL") )
  }
}
