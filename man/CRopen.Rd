\name{CRopen}
\alias{CRopen}
\title{
    Initialize graphics and related structures.
}
\description{
    Open window, intitialize graphics structures, load font, create event for polling event queue.
}
\usage{
CRopen(x = 0, y = 0, w = 0, h = 0, fontpath = "", textsize = 60)
}
\arguments{
    \item{x}{X position of window.}
    \item{y}{Y position of window.}
    \item{w}{width of window.}
    \item{h}{height of window.}
    \item{fontpath}{path to font to be used for text; if not provided, default font of package is used.}
    \item{textsize}{size of rendered text.}
}
\value{
    Returns a graphics_list containing pointers to graphics structures, font, and integers of width and height of window.
}
\details{
    \code{CRopen} calls SDL functions to open a window, get window surface and renderer, load font, and initialize R pointers to structures required later; with default arguments x = y = w = h = 0, a full-screen window is opened.
}

\examples{
    graph <- CRopen( 50, 50, 500, 500 )
    CRclose( graph )
}

