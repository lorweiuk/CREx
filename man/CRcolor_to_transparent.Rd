\name{CRcolor_to_transparent}
\alias{CRcolor_to_transparent}
\title{
    Sets color in image to transparent.
}
\description{
    Takes image_list loaded with \code{CRload_image} and sets color specified in color_list to transparent. Index argument specifies which image to use.
}
\usage{
CRcolor_to_transparent(image_list, index, color_list, status = NULL)
}
\arguments{
    \item{image_list}{Image_list created with \code{CRload_image}.}
    \item{index}{Index of image in image_list.}
    \item{color_list}{Color_list with elements r, g, b (and possibly a) specifying color in image to set to transparent.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}

\examples{
    CRset_blend_mode(gs, "blend")
    myimage <- CRload_image(list(), "C:/Users/me/picture_of_me.jpg")
    CRcolor_to_transparent(myimage, 1, list(r = 255, g = 110, b = 40))
}
\details{
    Images are first loaded with \code{CRload_image} and can later be rendered to screen using \code{CRdraw_image}. Note that eventual effects of transparent colors are affected by blend mode set via \code{CRset_blend_mode}.
}