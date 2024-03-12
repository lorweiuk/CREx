\name{CRdraw_texture}
\alias{CRdraw_texture}
\title{
    Copies texture.
}
\description{
    Copies a texture to rendering target. See \code{CRcreate_texture} for more info on textures. \code{CRdraw_texture} can copy the entire texture or parts of it (specified in argument texture_rect), can fill the entire rendering target or parts of it (argument target_rect), can rotate the texture before copying (argument angle). Rotation happens around the point specified in center_point.
}
\usage{
CRdraw_texture(graphics_list, texture_list, index, texture_rect = list(), target_rect = list(), angle = 0, center_point = list(), status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{List containing texture to be rendered. Texture first created with \code{CRcreate_texture}.}
    \item{index}{Index of texture to be rendered in texture_list.}
    \item{texture_rect}{List defining rectangle of texture to be drawn (contains elements x, y, w, h; default: whole texture).}
    \item{target_rect}{List defining where on renderer to draw texture (contains elements x, y, w, h; default: whole renderer).}
    \item{angle}{Specifies rotation of drawn image, in degrees.}
    \item{center_point}{Defines point around which to rotate (contains elements x, y).}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    txl <- CRcreate_texture(gs, list(), 100, 100)
    
    CRset_render_target(gs, txl, 1)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    CRfill_rect(gs, list(x = 25, y = 25, w = 50, h = 50))
    
    CRreset_render_target(gs)
    
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRdraw_texture(gs, txl, 1)

    CRrender_present(gs)
}
