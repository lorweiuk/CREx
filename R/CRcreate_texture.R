#' Create a texture of size widthin x heightin
#'
#' Creates an empty texture of size widthin x heightin
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param texture_list (possibly empty) list of textures previously loaded, new texture is added to this
#' param widthin width of texture
#' param heightin height of texture
#' return pointer to a texture structure

CRcreate_texture <- function(graphics_list, texture_list, widthin, heightin, status = NULL) {

  if ( !isGraphicsList(graphics_list) ) {
    
    warning("Input structure must be graphics list.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Input structure must be graphics list.", PACKAGE = "CREx") )
      
    }
    
    return(texture_list)
    
  } else {
    
    graphics_list <- orderGraphicsList(graphics_list)
    
    out <- NULL
    
    if (isStatus(status)) {
      
      out <- .Call("SDLcreate_texture", graphics_list, widthin, heightin, status, PACKAGE = "CREx")
      
    } else {
      
      out <- .Call("SDLcreate_texture", graphics_list, widthin, heightin, NULL, PACKAGE = "CREx")
      
    }
    
    names(out) <- c("texturefile", "width", "height", "valid")
    
    texture_list$texturefile <- c( texture_list$texturefile, out$texturefile )
    
    texture_list$width       <- c( texture_list$width, out$width )
    
    texture_list$height      <- c( texture_list$height, out$height )
    
    texture_list$valid       <- c( texture_list$valid, out$valid )
    
    return(texture_list)
    
  }
}
