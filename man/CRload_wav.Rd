\name{CRload_wav}
\alias{CRload_wav}
\title{
    Loads wav-file.
}
\description{
    Loads a wav-file specified in wavfile, adds it to wav_list. wavfile argument must provide full path, filename and extension of file. Wav_list can later be provided to \code{CRclose} to close resource. Before loading wav, \code{CRinit_audio} must be called.
}
\usage{
CRload_wav(wav_list, wavfile, status = NULL)
}
\arguments{
    \item{(wav_list}{a list of wav files previously loaded (possibly empty), to which the loaded wav file is added.}
    \item{wavfile}{wav file (full path, filename, extension) to be loaded.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated wav_list with loaded wav-file added. If everything worked fine, returned wav_list has an integer \code{valid} set to \code{1}.
}
