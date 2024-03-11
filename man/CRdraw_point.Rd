\name{CRdraw_point}
\alias{CRdraw_point}
\title{
    Draws point.
}
\description{
    Draws a single point of pixel size to rendering target.
}
\usage{
CRdraw_point(graphics_list, point_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{point_list}{List defining single point, containing elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
