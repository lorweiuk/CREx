\name{CRfill_circle_n}
\alias{CRfill_circle_n}
\title{
    Draws a filled circle with limited precision.
}
\description{
    Draws a filled circle defined in circle_list to rendering target. Circle is defined in terms of center point (centerx, centery) and radius. Precision is set by user (n_points). Precision determines how many line segments the circle's outline consists of.
}
\usage{
CRfill_circle_n(graphics_list, circle_list, n_points, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{List defining circle, containing elements centerx and centery as well as radius.}
    \item{n_points}{Positive integer setting precision of circle.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRfill_circle_n} divides circle into trapezoids and fills those line-by-line.
}