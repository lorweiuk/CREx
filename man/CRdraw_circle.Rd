\name{CRdraw_circle}
\alias{CRdraw_circle}
\title{
    Draws outline of a circle.
}
\description{
    Draws outline of a cirlce to rendering target, circle is defined in terms of center point and radius (list(centerx, centery, radius)).
}
\usage{
CRdraw_circle(graphics_list, circle_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{list defining circle, containing elements centerx, centery, radius.}
}
\details{
    \code{CRdraw_circle} uses Bresenham's algorithm.
}

\examples{
    CRdraw_circle( mygraphics, list(centerx = 50, centery = 50, radius = 150) )
}

