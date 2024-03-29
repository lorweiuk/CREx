\name{CRset_render_color}
\alias{CRset_render_color}
\title{
    Sets color for render drawing.
}
\description{
    Sets render drawing color. This is the color used by subsequent calls to the drawing functions: \code{CRdraw_rect, CRdraw_lines, CRfill_rect, CRfill_circle}, etc.
}
\usage{
    CRset_render_color(graphics_list, color_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{color_list}{List specifying color to be used (must contain r, g, b, and optionally a). Effect of a is determined by blend-mode, see \code{CRset_blend_mode}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    red <- list(r = 200, g = 0, b = 0)
    
    CRset_render_color(gs, red)
    
    CRrender_clear(gs)
    
    CRrender_present(gs)
}