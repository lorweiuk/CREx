\name{CRdraw_rects}
\alias{CRdraw_rects}
\title{
    Draws multiple rectangles.
}
\description{
    Draws outline of multiple rectangles defined in rect_list to rendering target.
}
\usage{
CRdraw_rects(graphics_list, rect_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{rect_list}{list defining multiple rectangles, containing vector elements x, y, w and h. (x[n], y[n], w[n], h[n]) together define one rectangle.}
}

