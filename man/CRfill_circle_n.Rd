\name{CRfill_circle_n}
\alias{CRfill_circle_n}
\title{
    Draws a filled circle with limited precision.
}
\description{
    Draws a filled circle defined in circle_list to rendering target; circle is defined in terms of center point (centerx, centery) and radius. Precision is set by user.
}
\usage{
CRfill_circle_n(graphics_list, circle_list, n_points)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{list defining circle, containing elements centerx and centery as well as radius.}
    \item{n_points}{positive integer setting precision of circle.}
}
\details{
    \code{CRfill_circle_n} divides circle into trapezoids and fills those line-by-line.
}