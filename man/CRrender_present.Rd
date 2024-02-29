\name{CRrender_present}
\alias{CRrender_present}
\title{
    Present to window.
}
\description{
    Presents what has been drawn to the window; presentation is synchronized with vertical refresh, the function returns time in milliseconds after screen was refreshed.
}
\usage{
onset <- CRrender_present(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}
\value{
    Returns time when underlying C-function returned, in milliseconds, since system was started.
}
