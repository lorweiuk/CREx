\name{CRdraw_circle_n}
\alias{CRdraw_circle_n}
\title{
    Draws outline of a circle with limited precision.
}
\description{
    Draws outline of a cirlce to rendering target, circle is defined in a circle_list as centerx, centery and radius. Precision is set by user (n_points) and determines how many line segments the circle's outline consists of.
}
\usage{
CRdraw_circle_n(graphics_list, circle_list, n_points, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{List defining circle, containing elements centerx, centery, and radius.}
    \item{n_points}{Positive integer setting precision of circle.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}

\examples{
    CRdraw_circle_n(mygraphics, list(centerx = 50, centery = 50, radius = 150), 7)
}

