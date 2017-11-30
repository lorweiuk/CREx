\name{CRload_wav}
\alias{CRload_wav}
\title{
    Loads wav file.
}
\description{
    Loads a wav file specified in wavfile, stores it in wav_list; wavfile must provide full path, filename and extension; wav_list can later be provided to \code{CRclose} to deallocate space; before loading wav, \code{CRinit_audio} must be called.
}
\usage{
CRload_wav(wav_list, wavfile)
}
\arguments{
    \item{(wav_list}{a list of wav files previously loaded (possibly empty), to which the loaded wav file is added.}
    \item{wavfile}{wav file (full path, filename, extension) to be loaded.}
}
\value{
    Returns updated wav_list with loaded wav file added.
}
