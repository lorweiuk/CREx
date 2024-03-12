\name{CRdraw_lines}
\alias{CRdraw_lines}
\title{
    Draws multiple lines.
}
\description{
    Draws multiple lines defined in line_list to rendering target. Line_list contains vector elements x1, y1, x2, y2, with each set (x1[i], y1[i], x2[i], y2[i]) defining one line. Consecutive lines are connected at the ends, i.e. a line is drawn from (x2[i], y2[i]) to (x1[i+1], y1[i+1]).
}
\usage{
CRdraw_lines(graphics_list, line_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{line_list}{List defining multiple lines, containing vector elements x1, y1, x2 and y2, with each set of x1[i], x2[i], y1[i] and y2[i]  defining a line.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\examples{
    CRset_render_color(gs, list(r = 0, g = 0, b = 0))
    
    CRrender_clear(gs)
    
    CRset_render_color(gs, list(r = 100, g = 0, b = 0))
    
    lines <- list(x1 = c(50, 50, 50, 100),
                  y1 = c(50, 100, 100, 50),
                  x2 = c(100, 50, 100, 50),
                  y2 = c(100, 100, 50, 50))
    
    CRdraw_lines(gs, lines)
    
    CRrender_present(gs)
}
