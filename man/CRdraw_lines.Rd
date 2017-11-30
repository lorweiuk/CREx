\name{CRdraw_lines}
\alias{CRdraw_lines}
\title{
    Draws multiple lines.
}
\description{
    Draws multiple lines defined in line_list to rendering target; lines are connected at the ends, ie. a line is added from (x2[n], y2[n]) to (x1[n+1], y1[n+1]).
}
\usage{
CRdraw_lines(graphics_list, line_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{line_list}{list defining multiple lines, containing vector elements x1, y1, x2 and y2, with each row of x1, x2, y1 and y2 together defining a line.}
}
