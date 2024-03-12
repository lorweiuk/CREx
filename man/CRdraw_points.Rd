\name{CRdraw_points}
\alias{CRdraw_points}
\title{
    Draws multiple points.
}
\description{
    Draws multiple pixel-sized points in point_list to rendering target.
}
\usage{
CRdraw_points(graphics_list, point_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{point_list}{List defining multiple points, containing vector elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    points <- list(x = c(100, 50, 150), y = c(50, 100, 100))
    
    CRdraw_points(gs, points)
    
    CRrender_present(gs)
}
