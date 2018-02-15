\name{CRload_font}
\alias{CRload_font}
\title{
    Loads a font.
}
\description{
    Loads a font (.ttf) to be used with \code{CRdraw_text()}.
}
\usage{
font_list <- CRload_font(font_list, fontfile, fontsize)
}
\arguments{
    \item{font_list}{a list of fonts previously loaded (possibly empty), to which the loaded font is added.}
    \item{fontfile}{file of font (full path, filename, extension) of font to be loaded.}
    \item{fontsize}{size of font to be loaded.}
}
\value{
    Returns updated font_list with loaded font added.
}
