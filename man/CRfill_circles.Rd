\name{CRfill_circles}
\alias{CRfill_circles}
\title{
    Draws multiple filled circles.
}
\description{
    Draws multiple filled circles defined in circles_list to rendering target; circles are defined in terms of center points (centerx, centery) and radii.
}
\usage{
CRfill_circles(graphics_list, circles_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circles_list}{list defining multiple circles, containing vector-elements centerx and centery as well as radii.}
}
\details{
    \code{CRfill_circles} uses Bresenham's algorithm.
}