\name{CRdraw_line}
\alias{CRdraw_line}
\title{
    Draws line.
}
\description{
    Draws a line defined in line_list to rendering target. Line is defined in terms of starting point (x1, y1) and end point (x2, y2).
}
\usage{
CRdraw_line(graphics_list, line_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{line_list}{List defining a line, containing elements x1, y1, x2 and y2.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    lines <- list(x1 = 50, y1 = 50, x2 = 100, y2 = 100)
    
    CRdraw_lines(gs, lines)
    
    CRrender_present(gs)
}
