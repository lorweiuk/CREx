\name{CRfill_circles}
\alias{CRfill_circles}
\title{
    Draws multiple filled circles.
}
\description{
    Draws multiple filled circles defined in circles_list to rendering target. Circles are defined in terms of center points (centerx, centery) and radii.
}
\usage{
CRfill_circles(graphics_list, circles_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circles_list}{List defining multiple circles, containing vector-elements centerx and centery as well as radius.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRfill_circles} uses Bresenham's algorithm.
}