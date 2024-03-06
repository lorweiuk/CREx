#' Closes SDL processes and cleans up
#'
#' Closes SDL processes and frees allocated space.
#' ... one or more structures allocated by CR
#' closed graphics_list, if provided, otherwise NULL

CRclose <- function(...) {

  input <- list(...)
  
  if (length(input) > 0) {
    
    for (i in 1:length(input)) {
      # loop through input, close depending on structure type
      
      if ( isGraphicsList(input[[i]]) ) {
        
        input[[i]] <- orderGraphicsList(input[[i]])
        
        invisible( .Call("SDLclose", input[[i]], PACKAGE = "CREx") )
        
      } else if ( isWavList(input[[i]]) ) {
        invisible( .Call("SDLclose_audio", input[[i]], PACKAGE = "CREx") )

      } else if ( isImageList(input[[i]]) ) {
        invisible( .Call("SDLclose_image", input[[i]], PACKAGE = "CREx") )

      } else if ( isTextureList(input[[i]]) ) {
        invisible( .Call("SDLclose_texture", input[[i]], PACKAGE = "CREx") )

      } else if ( isFontList(input[[i]]) ) {
        invisible( .Call("SDLclose_font", input[[i]], PACKAGE = "CREx") )
      
      } else if ( isControllerList(input[[i]]) ) {
        invisible( .Call("SDLclose_controller", input[[i]], PACKAGE = "CREx"))
        
      } else if ( isStatus(input[[i]]) ) {
        # in case status was passed as well, we set it to 1 and ""
        # b/c closing doesnt really cause errors
        
        invisible( .Call("SDLset_status", input[[i]], 1, "", PACKAGE = "CREx") )
        
      }
    }
  }
}
