\name{CRdraw_line}
\alias{CRdraw_line}
\title{
    Draws line.
}
\description{
    Draws a line defined in line_list to rendering target.
}
\usage{
CRdraw_line(graphics_list, line_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{line_list}{list defining a line, containing elements x1, y1, x2 and y2.}
}
