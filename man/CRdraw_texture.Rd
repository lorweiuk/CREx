\name{CRdraw_texture}
\alias{CRdraw_texture}
\title{
    Copy texture.
}
\description{
    Copy a texture to rendering target. Textures can be used to render multiple things off-screen before copying texture to screen at once. To this end, use functions \code{CRcreate_texture}, \code{CRset_render_target}, and \code{CRreset_render_target}. Additionally, \code{CRdraw_texture} can be used to rotate texture before copying to rendering target. Rotation is specified in degrees, around point in center_point.
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

