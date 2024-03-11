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
