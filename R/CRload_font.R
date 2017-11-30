#' Loads a font file
#'
#' Loads a font file specified in fontfile, if fontfile is empty, loads default font BEBAS.ttf

CRload_font <- function(font_list, fontfile, fontsize) {
    
    if (fontfile == "") {
        # load default font in /libs
        fontfile <- find.package("CREx", quiet = TRUE)
        if (length(fontfile) == 0) {
            stop("Please provide path to font file in argument 'fontfile'.")
        } else {
            fontfile = paste0(fontfile, "/libs/BEBAS.ttf")
        }
    }
    
    out <- .Call("SDLload_font", fontfile, fontsize, PACKAGE = "SDLDLL")
    
    font_list$fontfile <- c( font_list$fontfile, out)
    font_list$names     <- c( font_list$names, as.character(fontfile))
    font_list$size      <- c( font_list$size,  as.character(fontsize))
    return(font_list)
}