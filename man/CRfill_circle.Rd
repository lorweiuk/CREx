\name{CRfill_circle}
\alias{CRfill_circle}
\title{
    Draws a filled circle.
}
\description{
    Draws a filled circle defined in circle_list to rendering target. Circle is defined in terms of center point (centerx, centery) and radius.
}
\usage{
CRfill_circle(graphics_list, circle_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{List defining circle, containing elements centerx and centery as well as radius.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRfill_circle} uses Bresenham's algorithm.
}
\examples{
    CRfill_circle( mygraphics, list(centerx = 50, centery = 50, radius = 150) )
}

