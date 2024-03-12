\name{CRclose}
\alias{CRclose}
\title{
    Closes CREx resources.
}
\description{
    Closes and deallocates resources that were created and loaded earlier. These can include the basic graphics-list returned by \code{CRopen} or \code{CRcreate_texture} and other loaded resources returned by \code{CRload_image}, \code{CRload_font}, \code{CRload_wav} or \code{CRopen_controller}. Passing the graphics-list to \code{CRclose} will close the window.
}
\usage{
CRclose(...)
}
\arguments{
    \item{...}{One or more lists containing CREx structures (see description). A status list can also be passed optionally, as in most other functions.}
}
\examples{
    gs <- CRopen(50, 50, 500, 500)
    CRclose(gs)
}
\details{
    Closing is generally necessary for all resources that were loaded or created by CREx-functions internally, as opposed to the user in R.
}