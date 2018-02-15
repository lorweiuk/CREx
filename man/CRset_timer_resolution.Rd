\name{CRset_timer_resolution}
\alias{CRset_timer_resolution}
\title{
    Set global resolution of Windows' timer.
}
\description{
    Sets global Windows' timer resolution using timePeriodBegin(). This function can be used to increase time resolution for timestamps returned by CRget_time() and CRrender_present(). Note that response timestamps are not affected by this function, since the OS determines resolution in this case. Note further that a call \code{resout <- CRset_timer_resolution(resolution)} should always be paired with a call \code{CRreset_timer_resolution(resout)} at a later point of the script to reset the timer resolution. Not resetting the timer's resolution increases CPU load and energy consumption.
}
\usage{
    resout <- CRset_timer_resolution(resolution)
}
\arguments{
    \item{resolution}{a target reslution for the Windows' OS timer.}
}