#' Closes SDL processes and cleans up
#'
#' Closes SDL processes and frees allocated space.
#' ... one or more structures allocated by CR
#' closed graphics_list, if provided, otherwise NULL

CRclose <- function(...) {

  input <- list(...)
  output <- NULL
  
  if (length(input) == 0) {
    print("No argument provided to CRclose().")
    
  } else {
    
    for (i in 1:length(input)) {
      # loop through input, close depending on structure type
      
      if ( isGraphicsList(input[[i]]) ) {
        input[[i]] = orderGraphicsList(input[[i]]);
        output <- .Call("SDLclose", input[[i]], PACKAGE = "CREx")

      } else if ( isWavList(input[[i]]) ) {
        invisible( .Call("SDLclose_audio", input[[i]]$wavfile, length(input[[i]]$wavfile), PACKAGE = "CREx") )

      } else if ( isImageList(input[[i]]) ) {
        invisible( .Call("SDLclose_image", input[[i]]$imagefile, length(input[[i]]$imagefile), PACKAGE = "CREx") )

      } else if ( isTextureList(input[[i]]) ) {
        invisible( .Call("SDLclose_texture", input[[i]]$texturefile, length(input[[i]]$texturefile), PACKAGE = "CREx") )

      } else if ( isFontList(input[[i]]) ) {
        invisible( .Call("SDLclose_font", input[[i]]$fontfile, length(input[[i]]$fontfile), PACKAGE = "CREx") )
      }
        
    }
  }
  
  return(output)
}
