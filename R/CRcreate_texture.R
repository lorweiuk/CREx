#' Create a texture of size widthin x heightin
#'
#' Creates an empty texture of size widthin x heightin
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param texture_list (possibly empty) list of textures previously loaded, new texture is added to this
#' param widthin width of texture
#' param heightin height of texture
#' return pointer to a texture structure

CRcreate_texture <- function(graphics_list, texture_list, widthin, heightin) {
  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics list\".")
  } 
  graphics_list = orderGraphicsList(graphics_list)
  out <- .Call("SDLcreate_texture", graphics_list, widthin, heightin, PACKAGE = "SDLDLL")
    
  texture_list$texturefile <- c( texture_list$texturefile, out )
  return(texture_list)
}
