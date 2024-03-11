\name{CRrender_present}
\alias{CRrender_present}
\title{
    Present to window.
}
\description{
    Presents what has been rendered to the window. By default, presentation is synchronized with vertical screen refresh. Function returns time in milliseconds after screen was refreshed.
}
\usage{
onset <- CRrender_present(graphics_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns time when underlying C-function returned, in milliseconds, since system was started.
}
