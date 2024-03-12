\name{CRdraw_rect}
\alias{CRdraw_rect}
\title{
    Draws rectangle.
}
\description{
    Draws outline of rectangle defined in rect_list to rendering target. Rect_list must contain elements x, y, w, and h.
}
\usage{
CRdraw_rect(graphics_list, rect_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{rect_list}{List defining a rectangle, containing elements x, y, w and h.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    rect_list <- list(x = 50, y = 50, w = 100, h = 50)
    
    CRdraw_rect(gs, rect_list)
    
    CRrender_present(gs)
}