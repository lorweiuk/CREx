\name{CRclose}
\alias{CRclose}
\title{
    Close CREx resources.
}
\description{
    Closes and deallocates resources that were created and loaded earlier. These can include the basic graphics resources returned by CRopen() or CRcreate_texture() and other loaded resources returned by CRload_image(), CRload_font(), CRload_wav() or CRopen_controller().
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

