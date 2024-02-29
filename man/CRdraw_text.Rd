\name{CRdraw_text}
\alias{CRdraw_text}
\title{
    Draws text.
}
\description{
    Draws text string to rendering target, upper-left corner of text specified in point_list, using font loaded with \code{CRopen}.
}
\usage{
CRdraw_text( graphics_list, font_list, index, text, point_list, wrap_length = NULL)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{font_list}{a list of fonts loaded with \code{CRload_font()}.}
    \item{index}{an index into font_list, specifying which font to use.}
    \item{text}{character vector specifying text to be drawn.}
    \item{point_list}{list defining upper_left corner of text, containing elements x and y.}
    \item{wrap_length}{after how many pixels should text be wrapped. wrapping happens at spaces. leave wrap_length at default for single-line, non-wrapped rendering of text.}
}

