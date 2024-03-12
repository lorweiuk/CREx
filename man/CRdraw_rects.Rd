\name{CRdraw_rects}
\alias{CRdraw_rects}
\title{
    Draws multiple rectangles.
}
\description{
    Draws outline of multiple rectangles defined in rect_list to rendering target.
}
\usage{
CRdraw_rects(graphics_list, rect_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{rect_list}{List defining multiple rectangles, containing vector elements x, y, w and h. (x[i], y[i], w[i], h[i]) together define one rectangle.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    rect_list <- list(x = c(50, 200, 100),
                      y = c(50, 50, 150),
                      w = c(50, 50, 150),
                      h = c(50, 70, 50))
    
    CRdraw_rects(gs, rect_list)
    
    CRrender_present(gs)
}