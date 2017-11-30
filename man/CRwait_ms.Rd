\name{CRwait_ms}
\alias{CRwait_ms}
\title{
    Waits a certain number of milliseconds.
}
\description{
    Waits a certain number of milliseconds, returns time of end of wait, in milliseconds since \code{CRopen} was called.
}
\usage{
    CRwait_ms(ms)
}
\arguments{
    \item{ms}{number of milliseconds to wait.}
}
\value{
    Returns time of C-function returning, in milliseconds, since \code{CRopen} was called.
}