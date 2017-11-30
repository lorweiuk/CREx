\name{CRwait_fr}
\alias{CRwait_fr}
\title{
    Waits a certain number of frames.
}
\description{
    Waits a certain number of frames, by repeatedly updating screen, returns time of end of wait; note that since window is updated, the results of previous draw calls will be made visible.
}
\usage{
    CRwait_fr(graphics_list, fr)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{fr}{number of frames to be waited.}
}
\value{
    Returns time of C-function returning, in milliseconds, since \code{CRopen} was called.
}