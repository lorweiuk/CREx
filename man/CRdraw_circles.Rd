\name{CRdraw_circles}
\alias{CRdraw_circles}
\title{
    Draws outline of multiple circles.
}
\description{
    Draws outline of multiple cirlces to rendering target, circles are defined in terms of center points and radii (list(centerx, centery, radius)).
}
\usage{
CRdraw_circles(graphics_list, circles_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circles_list}{List defining circle, containing vector-elements centerx, centery, radius, with each entry representing one circle.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRdraw_circles} uses Bresenham's algorithm.
}

\examples{
    CRdraw_circles(mygraphics, list(centerx = c(50, 100, 150), centery = c(50, 100, 150), radius = c(50, 150, 250)))
}

