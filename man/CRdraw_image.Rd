\name{CRdraw_image}
\alias{CRdraw_image}
\title{
    Draws image.
}
\description{
    Draws an image in image_list, at position index, to rendering target. Image was previously loaded using \code{CRload_image}.
}
\usage{
CRdraw_image(graphics_list, image_list, index, rect_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{image_list}{List containing one or more images previously loaded with \code{CRload_image}.}
    \item{item}{Index of image in image_list to be drawn.}
    \item{rect_list}{List defining rectangle in window to draw image to, must contain elements x, y, w, h.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
