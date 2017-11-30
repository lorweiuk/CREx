\name{CRdraw_image}
\alias{CRdraw_image}
\title{
    Draws image.
}
\description{
    Draws an image in image_list, at position index, to rendering target; image was previously loaded using \code{CRload_image}.
}
\usage{
CRdraw_image(graphics_list, image_list, index, rect_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{image_list}{list containing one or more images previously loaded with \code{CRload_image}, must contain element \code{imagefile}.}
    \item{item}{index of image in image_list to be drawn.}
    \item{rect_list}{list defining rectangle in window to draw image to, must contain elements x, y, w, h.}
}
