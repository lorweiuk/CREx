\name{CRdraw_texture}
\alias{CRdraw_texture}
\title{
    Copy texture.
}
\description{
    Copy a texture to rendering target; textures can be used to draw multiple things to before copying texture to screen at once; to do this, use functions \code{CRcreate_texture}, \code{CRset_render_target}, \code{CRdraw_texture} and \code{CRreset_render_target}; additionally, \code{CRdraw_texture} can be used to rotate texture before copying to rendering target, and is the simplest way of rotation in CREx; rotation is specified in degrees, around point in center_point.
}
\usage{
CRdraw_texture(graphics_list, texture_list, index, texture_rect = list(), target_rect = list(), angle = 0, center_point = list() )
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{texture_list}{list containing texture to be rendered; texture first created with \code{CRcreate_texture}.}
    \item{index}{index of texture to be rendered in texture_list.}
    \item{texture_rect}{list defining rectangle of texture to be drawn (must contain elements x, y, w, h; default: whole texture is drawn).}
    \item{target_rect}{list defining where on renderer to draw texture (must contain elements x, y, w, h; default: whole renderer is filled).}
    \item{angle}{specifies rotation of drawn image, in degrees (default 0).}
    \item{center_point}{defines point around which to rotate (must contain elements x, y).}
}

