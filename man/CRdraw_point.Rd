\name{CRdraw_point}
\alias{CRdraw_point}
\title{
    Draws point.
}
\description{
    Draws a single point of pixel size to rendering target.
}
\usage{
CRdraw_point(graphics_list, point_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{point_list}{List defining single point, containing elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    point <- list(x = 50, y = 50)
    
    CRdraw_point(gs, point)
    
    CRrender_present(gs)
}
