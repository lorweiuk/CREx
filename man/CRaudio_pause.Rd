\name{CRaudio_pause}
\alias{CRaudio_pause}
\title{
    Pauses audio currently played on a channel.
}
\usage{
CRaudio_pause(channel, status = NULL)
}
\arguments{
    \item{channel}{Number of channel to pause (starting at 0).}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}