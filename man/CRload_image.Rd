\name{CRload_image}
\alias{CRload_image}
\title{
    Loads image file.
}
\description{
    Loads an image file specified in imagefile, can be of type .bmp, .jpg, .jpeg, .png, .tif.
}
\usage{
CRload_image(image_list, imagefile)
}
\arguments{
    \item{image_list}{a list of images previously loaded (possibly empty), to which the loaded image is added.}
    \item{imagefile}{file of image (full path, filename, extension) of image to be loaded.}
}
\value{
    Returns updated image_list with loaded image added.
}
