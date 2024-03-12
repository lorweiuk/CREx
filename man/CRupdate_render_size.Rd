\name{CRupdate_render_size}
\alias{CRupdate_render_size}
\title{
    Updates width and height info in graphics-list.
}
\description{
    Updates width and height values in graphics-list to current dimensions of rendering area. Useful after window was resized.
}
\usage{
graphics_list <- CRupdate_render_size(graphics_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns updated graphics-list.
}
