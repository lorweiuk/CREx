\name{CRdraw_text}
\alias{CRdraw_text}
\title{
    Draws text.
}
\description{
    Draws text string to rendering target, upper-left corner of text specified in point_list, using font loaded with \code{CRopen}.
}
\usage{
CRdraw_text( graphics_list, text, point_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{text}{character vector specifying text to be drawn.}
    \item{point_list}{list defining upper_left corner of text, containing elements x and y.}
}

