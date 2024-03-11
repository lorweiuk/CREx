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

