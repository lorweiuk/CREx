\name{CRset_blend_mode}
\alias{CRset_blend_mode}
\title{
    Sets the blend mode for renderer.
}
\description{
    Sets the blend mode when using render drawing operations (fill_rect etc.).
}
\usage{
CRset_blend_mode(graphics_list, mode)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{mode}{a string specifying the desired blend mode, can be "none", "blend", "add", "mod".}
}
