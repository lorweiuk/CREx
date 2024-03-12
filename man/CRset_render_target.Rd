\name{CRset_render_target}
\alias{CRset_render_target}
\title{
    Sets texture as rendering target.
}
\description{
    Changes rendering target from window belonging to graphics_list to some texture created by \code{CRcreate_texture}. Use \code{CRreset_render_target} to set window as rendering target again. See \code{CRcreate_texture} for more info.
}
\usage{
    CRset_render_target(graphics_list, texture_list, index, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{List of textures created with \code{CRcreate_texture}.}
    \item{index}{Index of texture intended to be target in texture_list.}
}
\examples{
    mytexture <- CRcreate_texture(mygraphics, list(), 300, 300)
    CRset_render_target(mygraphics, mytexture, 1 ) # set rendering target as first texture in mytexture
    CRdraw_rect(mygraphics, list(x=50, y=50, w=100, h=100))
    CRdraw_rect(mygraphics, list(x=20, y=30, w= 80, h= 80))
    CRdraw_rect(mygraphics, list(x=10, y=20, w= 30, h= 40))
    CRreset_render_target(mygraphics)
    CRdraw_texture(mygraphics, mytexture, 1)
}
