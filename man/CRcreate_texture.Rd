\name{CRcreate_texture}
\alias{CRcreate_texture}
\title{
    Creates a texture.
}
\description{
    Takes graphics_list of an opened window returned by \code{CRopen}, creates texture for that window of specified width and height, stores it in texture_list. Textures can be used to render multiple things to before copying the texture to the screen. In order to render to a texture, the texture should be set as rendering target using \code{CRset_render_target}. After rendering to texture, rendering target should be reset to window using \code{CRreset_render_target}. First rendering to texture, instead of to the screen directly, can speed up stimulus presentation especially for complex stimuli.
}
\usage{
CRcreate_texture(graphics_list, texture_list, widthin, heightin, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{A (possibly empty) list to store texture pointer in. Created textures should be stored in texture_list and later be passed to \code{CRclose} to deallocate resources.}
    \item{widthin}{Desired width of texture.}
    \item{heightin}{Desired height of texture.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated texture_list with newly created texture included. If everything worked fine, returned texture_list has an integer \code{valid} set to \code{1}.
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

