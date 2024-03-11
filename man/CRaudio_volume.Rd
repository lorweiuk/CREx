\name{CRaudio_volume}
\alias{CRaudio_volume}
\title{
    Sets volume for audio channel.
}
\usage{
CRaudio_volume(volume, channel, status = NULL)
}
\arguments{
    \item{volume}{Integer value representing volume, between 0 and 120.}
    \item{channel}{Number of channel for which volume is set (starting at 0).}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
