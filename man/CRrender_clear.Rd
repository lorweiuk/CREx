\name{CRrender_clear}
\alias{CRrender_clear}
\title{
    Clears rendering target.
}
\description{
    Clears rendering target to color last set with \code{CRset_render_color}; changes take effect at next call to \code{CRrender_present}.
}
\usage{
CRrender_clear(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}