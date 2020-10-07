\name{CRcolor_to_transparent}
\alias{CRcolor_to_transparent}
\title{
    Set a color in surface to transparent.
}
\description{
    Takes in an image_list (loaded with \code{CRload_image}) and sets a color specified in color_list to transparent. Index argument specifies which image to use. For it to take effect, transparency must first be enabled using \code{CRallow_alpha}.
}
\usage{
CRcolor_to_transparent(image_list, index, color_list)
}
\arguments{
    \item{image_list}{an image_list, usually loaded with \code{CRload_image}.}
    \item{index}{index indicating which image in image_list to use.}
    \item{color_list}{a color list (elements r,g,b, possibly a) specifying color in surfacep to be set to transparent.}
}

\examples{
    CRallow_alpha( graphics_list )
    myimage <- CRload_image( list(), "C:/Users/me/picture_of_me.jpg" )
    CRcolor_to_transparent( myimage, 1, list(r = 255, g = 110, b = 40) )
}

