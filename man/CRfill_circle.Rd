\name{CRfill_circle}
\alias{CRfill_circle}
\title{
    Draws a filled circle.
}
\description{
    Draws a filled circle defined in circle_list to rendering target; circle is defined in terms of center point (centerx, centery) and radius.
}
\usage{
CRfill_circle(graphics_list, circle_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{list defining circle, containing elements centerx and centery as well as radius.}
}
\details{
    \code{CRfill_circle} uses Bresenham's algorithm.
}