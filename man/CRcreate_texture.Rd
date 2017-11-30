\name{CRcreate_texture}
\alias{CRcreate_texture}
\title{
    Creates a texture.
}
\description{
    Takes in a graphics_list of an opened window, creates a texture for that window of specified width and height, stores it in texture_list; textures can be used to draw multiple things to before copying the texture to the screen; in order to draw to a texture, the texture should be set as rendering target using \code{CRset_render_target}.
}
\usage{
CRcreate_texture(graphics_list, texture_list, widthin, heightin)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{a (possibly empty) list to store texture pointer in; created textures should be stored in texture_list and later be provided to CRclose to deallocate space.}
    \item{widthin}{desired width of texture.}
    \item{heightin}{desired height of texture.}
}
\value{
    Returns updated texture_list with newly created texture included.
}
\examples{
    mytexture <- CRcreate_texture( mygraphics, list(), 300, 300 )
    CRset_render_target(mygraphics, mytexture, 1 ) # set rendering target as first texture in mytexture
    CRdraw_rect(mygraphics, list(x=50, y=50, w=100, h=100))
    CRdraw_rect(mygraphics, list(x=20, y=30, w= 80, h= 80))
    CRdraw_rect(mygraphics, list(x=10, y=20, w= 30, h= 40))
    CRreset_render_target(mygraphics)
    CRdraw_texture(mygraphics, mytexture, 1)
}

