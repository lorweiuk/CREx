\name{CRset_window_size}
\alias{CRset_window_size}
\title{
    Set new dimensions for window.
}
\description{
        Sets new width and height for window, updates info in graphics structure. Width and height in graphics structure reflect rendering area, so can deviate from window dimensions.
}
\usage{
graphics_list <- CRset_window_size(graphics_list, width, height)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{width}{new width of window.}
    \item{height}{new height of window.}
}
\value{
    Returns updated graphics structure.
}
