\name{CRrender_present}
\alias{CRrender_present}
\title{
    Present to window.
}
\description{
    Presents what has been drawn to the window; presentation is synchronized with vertical refresh, the function returns time in milliseconds at which screen was refreshed.
}
\usage{
onset <- CRrender_present(graphics_list, wait)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{wait}{a logical value (TRUE, FALSE) indicating whether \code{CRrender_present} should wait until stimulus was put on the screen before returning. In this case, the return value represents an estimate when the stimulus appeared on the screen. Otherwise, it just represents the time when the frame could be queued for presentation, which is at some point before actual presentation.}
}
\value{
    Returns time when underlying C-function returned, in milliseconds, since system was started; when wait=TRUE, this can be used as most precise estimate of when graphical content appeared on the screen.
}