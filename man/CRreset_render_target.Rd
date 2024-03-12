\name{CRreset_render_target}
\alias{CRreset_render_target}
\title{
    Resets rendering target.
}
\description{
    Resets the rendering target to window belonging to graphics_list after it was set to a texture using \code{CRset_render_target}. See \code{CRcreate_texture} and \code{CRset_render_target} for more info and examples.
}
\usage{
    CRreset_render_target(graphics_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}