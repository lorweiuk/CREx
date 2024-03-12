\name{CRaudio_pause}
\alias{CRaudio_pause}
\title{
    Pauses audio currently played on channel.
}
\usage{
CRaudio_pause(channel, status = NULL)
}
\arguments{
    \item{channel}{Number of channel to pause (starting at 0).}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    Like all audio-related functions, \code{CRaudio_pause} requires a previous call to \code{CRinit_audio} to start audio system. Audio system is by default started with 2 channels. To load and play audio files, see \code{CRload_wav} and \code{CRplay_Wav}.
}