\name{CRset_render_target}
\alias{CRset_render_target}
\title{
    Set rendering target to texture.
}
\description{
    Change rendering target from window belonging to graphics_list to some texture; use \code{CRreset_render_target} to reset to window.
}
\usage{
    CRset_render_target(graphics_list, texture_list, index)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{a list of textures created with \code{CRcreate_texture}.}
    \item{index}{index of texture intended to be target in texture_list.}
}