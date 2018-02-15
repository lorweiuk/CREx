\name{CRreset_timer_resolution}
\alias{CRreset_timer_resolution}
\title{
    Reset global resolution of Windows' timer.
}
\description{
    This function resets the Windows' OS global timer resolution, which affects \code{CRget_time()} and \code{CRrender_present()}. \code{CRreset_timer_resolution(resolution)} should always be called at some point after calling \code{CRset_timer_resolution} and should be called with the ouput resolution provided by \code{CRset_timer_resolution()}.
}
\usage{
    CRreset_timer_resolution(resolution)
}
\arguments{
    \item{resolution}{the resolution previously set and returned by \code{CRset_timer_resolution}.}
}