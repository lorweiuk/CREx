\name{CRopen}
\alias{CRopen}
\title{
    Initialize graphics and related structures.
}
\description{
    Open window, intitialize graphics structures, create event for polling event queue, measure timer lag etc.
}
\usage{
CRopen(x = 0, y = 0, w = 0, h = 0)
}
\arguments{
    \item{x}{X position of window.}
    \item{y}{Y position of window.}
    \item{w}{width of window.}
    \item{h}{height of window.}
}
\value{
    Returns a graphics_list containing pointers to graphics structures and integers of width and height of window, as well as timer resolution and timer lag.
}
\details{
    \code{CRopen} calls SDL functions to open a window, get window surface and renderer, and initialize R pointers to structures required later; with default arguments x = y = w = h = 0, a full-screen window is opened.
}

\examples{
    graph <- CRopen( 50, 50, 500, 500 )
    CRclose( graph )
}

