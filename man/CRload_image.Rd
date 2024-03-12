\name{CRload_image}
\alias{CRload_image}
\title{
    Loads image-file.
}
\description{
    Loads an image file specified in imagefile, can be of type .bmp, .jpg, .jpeg, .png, .tif.
}
\usage{
CRload_image(image_list, imagefile, status = NULL)
}
\arguments{
    \item{image_list}{List of images previously loaded (possibly empty), to which the loaded image is added.}
    \item{imagefile}{File of image (full path, filename, extension) of image to be loaded.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated image_list with loaded image added. If everything worked fine, returned image_list has an integer \code{valid} set to \code{1}.
}
\examples{
    imgl <- list()
    imgl <- CRload_image(imgl, "C:/Documents/picture_1.png")
    imgl <- CRload_image(imgl, "C:/Documents/picture_2.png")
    imgl <- CRload_image(imgl, "C:/Documents/picture_3.png")
}