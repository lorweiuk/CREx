\name{CRplay_wav}
\alias{CRplay_wav}
\title{
    Play wav file.
}
\description{
    Plays wav file in wav_list, previously loaded with \code{CRload_wav}; note that audio subsystem must first be initialized using \code{CRinit_audio}.
}
\usage{
    CRplay_wav(wav_list, index, channel)
}
\arguments{
    \item{wav_list}{list of wav files loaded, containing the wav file to be played.}
    \item{index}{index of wav file to be played in wav_list.}
    \item{channel}{channel on which to play wav.}
}
