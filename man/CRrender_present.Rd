\name{CRrender_present}
\alias{CRrender_present}
\title{
    Present to window.
}
\description{
    Presents what has been drawn to the window; presentation is synchronized with vertical refresh, the function returns time in milliseconds at which screen was refreshed.
}
\usage{
CRrender_present(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}
\value{
    Returns time when underlying C-function returned, in milliseconds, system was started; this can be used as most precise estimate of when graphical content appeared on the screen.
}