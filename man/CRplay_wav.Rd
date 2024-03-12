\name{CRplay_wav}
\alias{CRplay_wav}
\title{
    Plays wav-file.
}
\description{
    Plays wav file in wav_list, previously loaded with \code{CRload_wav}. Note that audio system must first be initialized using \code{CRinit_audio}.
}
\usage{
    CRplay_wav(wav_list, index, channel, status = NULL)
}
\arguments{
    \item{wav_list}{List of wav-files loaded with \code{CRload_wav}, containing the file to be played.}
    \item{index}{Index of file in wav_list to be played.}
    \item{channel}{Channel on which to play wav.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
