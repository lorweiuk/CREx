\name{CRdraw_lines}
\alias{CRdraw_lines}
\title{
    Draws multiple lines.
}
\description{
    Draws multiple lines defined in line_list to rendering target. Consecutive lines are connected at the ends, i.e. a line is added from (x2[n], y2[n]) to (x1[n+1], y1[n+1]).
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
    CRdraw_lines(gs, list(x1 = c(0, gs$width), y1 = c(0, 0), x2 = c(gs$width, 0), y2 = c(gs$height, gs$height)))
}
