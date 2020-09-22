#' Loads a font file
#'
#' Loads a font file specified in fontfile. 

CRload_font <- function(font_list, fontfile, fontsize) {
    
  out <- .Call("SDLload_font", fontfile, fontsize, PACKAGE = "CREx")
	
	if (is.numeric(out)) {
		if (out == -1) {
		  return(NULL)
		}
	}
	 
	font_list$fontfile <- c( font_list$fontfile, out)
	font_list$names    <- c( font_list$names, as.character(fontfile))
	font_list$size     <- c( font_list$size,  as.character(fontsize))
	return(font_list)
}