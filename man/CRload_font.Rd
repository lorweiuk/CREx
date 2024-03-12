\name{CRload_font}
\alias{CRload_font}
\title{
    Loads font.
}
\description{
    Loads font (.ttf) to be used with \code{CRdraw_text}.
}
\usage{
font_list <- CRload_font(font_list, fontfile, fontsize, status = NULL)
}
\arguments{
    \item{font_list}{List of fonts previously loaded (possibly empty), to which the loaded font is added.}
    \item{fontfile}{File of font (full path + filename + extension) of font to be loaded.}
    \item{fontsize}{Size of font to be loaded.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated font_list with new font added.If everything worked fine, returned font_list has an integer \code{valid} set to \code{1}.
}
\examples{
    fnt_list <- CRload_font(list(), "C:/Documents/myfont.ttf", 20)
    
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    CRdraw_text(gs, fnt_list, 1, "HELLO!", list(x = 100, y = 100))

    CRrender_present(gs)
}