\name{CRdraw_image}
\alias{CRdraw_image}
\title{
    Draws image.
}
\description{
    Draws an image in image_list to rendering target. Argument index specifies which image in image_list to draw.
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
\details{
    Images are first loaded using \code{CRload_image}, which creates an image_list. Images are off-screen resources that can be copied to the screen using \code{CRdraw_image}. Images are different internally from textures: the latter are more flexible, for example when copying them to screen, and are also more efficient than images, which are slow to copy. If showing an image via \code{CRdraw_image} is too slow, the image can first be drawn to a texture (see \code{CRcreate_texture}), which is faster and more flexible to copy.
}