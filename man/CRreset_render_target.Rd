\name{CRreset_render_target}
\alias{CRreset_render_target}
\title{
    Reset rendering target.
}
\description{
    Reset the rendering target to window belonging to graphics_list after it was set to a texture using \code{CRset_render_target}.
}
\usage{
    CRreset_render_target(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}