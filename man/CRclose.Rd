\name{CRclose}
\alias{CRclose}
\title{
    Close CREx structures.
}
\description{
    Closes and deallocates structures created and loaded earlier (window, renderer, images, wav files, etc.)
}
\usage{
CRclose(...)
}
\arguments{
    \item{...}{one or multiple lists containing CREx's structures; can be graphics_list, wav_list, image_list, texture_list.}
}
\value{
    Returns "emptied" copy of graphics_list.
}

\examples{
    graph <- CRopen( 50, 50, 500, 500 )
    CRclose( graph )
}

