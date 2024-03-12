\name{CRrender_clear}
\alias{CRrender_clear}
\title{
    Clears rendering target.
}
\description{
    Clears rendering target to color last set with \code{CRset_render_color}. Changes take effect after next call to \code{CRrender_present}. See draw_ and fill_ functions for examples.
}
\usage{
CRrender_clear(graphics_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}