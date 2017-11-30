\name{CRdraw_points}
\alias{CRdraw_points}
\title{
    Draws multiple points.
}
\description{
    Draws multiple pixel-sized points in point_list to rendering target.
}
\usage{
CRdraw_points(graphics_list, point_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{point_list}{list defining multiple points, containing vector elements x and y.}
}
