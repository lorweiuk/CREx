\name{CRset_render_target}
\alias{CRset_render_target}
\title{
    Sets texture as rendering target.
}
\description{
    Changes rendering target from window belonging to graphics_list to some texture. Use \code{CRreset_render_target} to set window as rendering target again.
}
\usage{
    CRset_render_target(graphics_list, texture_list, index, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{List of textures created with \code{CRcreate_texture}.}
    \item{index}{Index of texture intended to be target in texture_list.}
}