\name{CRaudio_resume}
\alias{CRaudio_resume}
\title{
    Resumes audio previously paused on channel.
}
\usage{
CRaudio_resume(channel, status = NULL)
}
\arguments{
    \item{channel}{Number of channel to resume (starting at 0).}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    See \code{CRaudio_pause}, \code{CRinit_audio} and other audio functions for more details.
}