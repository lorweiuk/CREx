\name{CRflush}
\alias{CRflush}
\title{
    Flushes pending events.
}
\description{
    Flushes pending events in event queue. These will not be returned by \code{CRpoll_event}. If type is provided, only events of this type are flushed. For available types, see \code{CRpoll_event}.
}
\usage{
CRflush(graphics_list, type = NULL, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{type}{Optional string specifying which type of events to flush. Can be any type possible in \code{CRpoll_event}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
