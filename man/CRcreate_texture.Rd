\name{CRcreate_texture}
\alias{CRcreate_texture}
\title{
    Creates texture.
}
\description{
    Creates a texture for window belonging to graphics_list. Arguments width and height specify dimensions of texture. Texture is added to texture_list.
}
\usage{
CRcreate_texture(graphics_list, texture_list, widthin, heightin, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{A (possibly empty) list to store texture in. Created textures should be stored in texture_list and later be passed to \code{CRclose} to close resources.}
    \item{widthin}{Desired width of texture.}
    \item{heightin}{Desired height of texture.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated inpute texture_list with newly created texture included. If everything worked fine, returned texture_list has an integer \code{valid} set to \code{1}.
}
\details{
    Window has to be opened first with \code{CRopen}. Textures are like off-screen rendering areas and can be used to render multiple things to before copying the texture to the screen via \code{CRdraw_texture}. The benefit of this is that the rendering operations can take time, while eventual copying of the texture to the screen is very fast, and thus textures can provide considerable speed-up for complicated stimuli. In order to render to a texture, the texture has to be set as rendering target using \code{CRset_render_target}. All the regular rendering operations (\code{CRdraw_rect}, \code{CRfill_circle}, etc.) will now affect the texture, not the screen. After rendering to texture, the rendering target has to be reset to the window using \code{CRreset_render_target}.
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

