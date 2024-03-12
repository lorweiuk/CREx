\name{CRdraw_polygon}
\alias{CRdraw_polygon}
\title{
    Draws polygon.
}
\description{
    Draws polygon defined in polygon_list to rendering target. Polygon is defined in a polygon_list containing ordered vectors of vertices x and y.
}
\usage{
CRdraw_polygon(graphics_list, polygon_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{polygon_list}{List defining a polygon, containing vector-elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRdraw_polygon} internally uses same drawing method as \code{CRdraw_lines}. Polygon is automatically "closed" at the end: a line is implicitly added from last to first vertex.
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    poly <- list(x = c(100, 50, 70, 130, 150),
                 y = c(50, 80, 130, 130, 80))
    
    CRdraw_polygon(gs, poly)
    
    CRrender_present(gs)
}