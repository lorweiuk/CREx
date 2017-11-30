#' Change rendering target
#'
#' Change rendering target from screen's renderer to some texture; use CRreset_render_target() to return to screen's renderer
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param texture_list list of textures previously created with CRcreate_texture()
#' param index index of texture in texture_list to be set as render target

CRset_render_target <- function(graphics_list, texture_list, index) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  if ( !isTextureList(texture_list)) {
    stop("Input structure must be \"texture list\".")
  }
  if ( index > length(texture_list$texturefile)) {
    stop("Index out of range of \"texture_list$texturefile\".")
  }
  
  graphics_list = orderGraphicsList(graphics_list)
  invisible( .Call("SDLset_render_target_texture", graphics_list, texture_list$texturefile[[index]], PACKAGE = "SDLDLL") )
  
}
