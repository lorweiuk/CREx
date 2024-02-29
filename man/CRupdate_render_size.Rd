\name{CRupdate_render_size}
\alias{CRupdate_render_size}
\title{
    Update width and height info in graphics structure (e.g. after resizing window).
}
\description{
    Updates width and height values in graphics structure to current dimensions of rendering area. Useful after window was resized.
}
\usage{
graphics_list <- CRupdate_render_size(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}
\value{
    Returns updates graphics structure.
}
