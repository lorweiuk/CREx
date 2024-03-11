\name{CRdraw_circle}
\alias{CRdraw_circle}
\title{
    Draws outline of a circle.
}
\description{
    Draws outline of a cirlce to rendering target. Circle is defined in a circle_list as center point and radius (list(centerx, centery, radius)).
}
\usage{
CRdraw_circle(graphics_list, circle_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{List defining circle, containing elements centerx, centery, radius.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRdraw_circle} uses Bresenham's algorithm.
}

\examples{
    CRdraw_circle( mygraphics, list(centerx = 50, centery = 50, radius = 150) )
}

