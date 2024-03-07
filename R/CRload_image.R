#' Loads an image file
#'
#' Loads an image file specified in imagefile, can be of type .bmp, .jpg, .jpeg, .png, .tif
#' param image_list a list of image previously loaded (possibly empty), to which the loaded image is added
#' param imagefile file of image (full path) of image to be loaded
#' return updated image_list with loaded image added

CRload_image <- function(image_list, imagefile, status = NULL) {
  
  splitname <- strsplit(imagefile, ".", fixed = TRUE)[[1]]
  
  if (length(splitname) == 1) {
    
	  warning("Imagefile must have dot and extension.")
    
    if (isStatus(status)) {
      
      invisible( .Call("SDLset_status", status, 0, "Imagefile must have dot and extension.", PACKAGE = "CREx") )
      
    }
    
    return(image_list)
    
  }
  
  extension <- paste0(".", splitname[length(splitname)])
  
  out <- NULL
  
  if (isStatus(status)) {
    
    out <- .Call("SDLload_image", imagefile, extension, status, PACKAGE = "CREx")
    
  } else {
    
    out <- .Call("SDLload_image", imagefile, extension, NULL, PACKAGE = "CREx")
    
  }
  
  names(out) <- c("imagefile", "names", "extension", "width", "height", "valid")
  
  image_list$imagefile <- c(image_list$imagefile, out$imagefile)
  
  image_list$names     <- c(image_list$names, out$names)
  
  image_list$extension <- c(image_list$extension, out$extension)
  
  image_list$width     <- c(image_list$width, out$width)

  image_list$height    <- c(image_list$height, out$height)
  
  image_list$valid     <- c(image_list$valid, out$valid)
  
  return(image_list)

}



