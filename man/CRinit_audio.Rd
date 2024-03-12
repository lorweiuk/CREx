\name{CRinit_audio}
\alias{CRinit_audio}
\title{
    Initializes audio system.
}
\description{
    Initializes audio system. Must be called before audio files can be loaded and played using \code{CRload_wav} and \code{CRplay_wav}.
}
\usage{
CRinit_audio(status = NULL)
}
\arguments{
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
  Audio system is initialized with 2 channels, at 48.000 Hz, 2048 frames.
}