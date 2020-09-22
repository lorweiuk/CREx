#' Loads an image file
#'
#' Loads an image file specified in imagefile, can be of type .bmp, .jpg, .jpeg, .png, .tif
#' param image_list a list of image previously loaded (possibly empty), to which the loaded image is added
#' param imagefile file of image (full path) of image to be loaded
#' return updated image_list with loaded image added

CRload_image <- function(image_list, imagefile) {
  
  dotpos <- gregexpr(".", imagefile, fixed = TRUE)[[1]][1]
  
  if (dotpos == -1) {
	  stop("imagefile must have dot and extension.")
  }
  
  extension <- substr(imagefile, dotpos, nchar(imagefile))
  
  out <- .Call("SDLload_image", imagefile, extension, PACKAGE = "CREx")
  
  if (is.numeric(out)) {
	  if (out == -1) {
	    return(NULL)
	  }
  }
    
  image_list$imagefile <- c( image_list$imagefile, out)
  image_list$names     <- c( image_list$names, as.character(imagefile))
  return(image_list)

}



