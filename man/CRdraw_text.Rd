\name{CRdraw_text}
\alias{CRdraw_text}
\title{
    Draws text.
}
\description{
    Draws text string to rendering target, upper-left corner of text specified in point_list, using font loaded with \code{CRload_font}.
}
\usage{
CRdraw_text( graphics_list, font_list, index, text, point_list, wrap_length = NULL, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{font_list}{List of fonts loaded with \code{CRload_font}.}
    \item{index}{Index into font_list, specifying which font to use.}
    \item{text}{Character vector specifying text to be drawn.}
    \item{point_list}{List defining upper_left corner of text, containing elements x and y.}
    \item{wrap_length}{After how many pixels should text be wrapped? Wrapping happens at spaces. Leave wrap_length at default (NULL) for single-line, non-wrapped rendering of text.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}

