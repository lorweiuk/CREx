\name{CRset_render_color}
\alias{CRset_render_color}
\title{
    Sets render drawing color.
}
\description{
    Sets render drawing color; this is the color used by the drawing functions: \code{CRdraw_rect, CRdraw_lines, CRfill_rect, CRfill_circle}, etc.
}
\usage{
    CRset_render_color(graphics_list, color_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{color_list}{list specifying color to be used (must contain r, g, b, and optionally a; to enable use of a, call \code{CRallow_alpha} first).}
}