\name{CRopen}
\alias{CRopen}
\title{
    Opens a window, initializes graphics and related structures.
}
\description{
    Opens a window, intitializes graphics structures, creates event for polling event queue, measures frame-rate etc.
}
\usage{
CRopen(x = 0, y = 0, w = 0, h = 0, param = c(), status = NULL)
}
\arguments{
    \item{x}{X position of window.}
    \item{y}{Y position of window.}
    \item{w}{Width of window.}
    \item{h}{Height of window.}
    \item{param}{Optional vector of flags ("render_scale_quality", "borderless", "resizable", "maximized", "minimized", "high_dpi", "no_vsync", "no_input_focus", "no_on_top").}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns a graphics_list containing pointers to graphics structures and integers of width and height of window, as well as other technical information. Also contains integer "valid", which is 1 if evertyhing was set up correctly, 0 otherwise.
}
\details{
    \code{CRopen} calls SDL functions to open a window, get window surface and renderer, and initialize R pointers to structures required later; with default arguments x = y = w = h = 0, a full-screen window is opened.
}
\examples{
    gs <- CRopen( 50, 50, 500, 500 )
    
    CRwait_ms(1000)
    
    CRclose(gs)
}

