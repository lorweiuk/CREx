#' Loads a font file
#'
#' Loads a font file specified in fontfile. 

CRload_font <- function(font_list, fontfile, fontsize, status = NULL) {

  out <- NULL
  
  if (isStatus(status)) {
    
    out <- .Call("SDLload_font", fontfile, fontsize, status, PACKAGE = "CREx")
    
  } else {
    
    out <- .Call("SDLload_font", fontfile, fontsize, NULL, PACKAGE = "CREx")
    
  }
  
  names(out) <- c("fontfile", "names", "size", "valid")
	 
	font_list$fontfile <- c( font_list$fontfile, out$fontfile)
	
	font_list$names    <- c( font_list$names, out$names)
	
	font_list$size     <- c( font_list$size,  out$size)
	
	font_list$valid    <- c(font_list$valid, out$valid)
	
	return(font_list)
	
}
