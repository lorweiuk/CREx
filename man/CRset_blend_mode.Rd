\name{CRset_blend_mode}
\alias{CRset_blend_mode}
\title{
    Sets the blend mode for renderer.
}
\description{
    Sets the blend mode when using render drawing operations (\code{CRfill_rect} etc.). The blend mode affects how colors at the same screen position are combined during rendering, based on their alpha value. Mode "none" simply overwrites color. Mode "blend" does alpha blending, with resulting color a weighted average of rendered colors. Mode "add" does additive blending, mode "mod" does color modulation.
}
\usage{
CRset_blend_mode(graphics_list, mode, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{mode}{String specifying the desired blend mode, can be "none", "blend", "add", "mod".}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
