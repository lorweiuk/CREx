\name{CRset_window_size}
\alias{CRset_window_size}
\title{
    Sets new dimensions for window.
}
\description{
    Sets new width and height for window, updates info in graphics-list. Width and height in graphics-list reflect actual rendering area.
}
\usage{
graphics_list <- CRset_window_size(graphics_list, width, height, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{width}{New width of window.}
    \item{height}{New height of window.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated graphics-list.
}
