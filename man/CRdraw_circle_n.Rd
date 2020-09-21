\name{CRdraw_circle_n}
\alias{CRdraw_circle_n}
\title{
    Draws outline of a circle with limited precision.
}
\description{
    Draws outline of a cirlce to rendering target, circle is defined in terms of center point and radius (list(centerx, centery, radius)). Precision is set by user.
}
\usage{
CRdraw_circle_n(graphics_list, circle_list, n_points)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{circle_list}{list defining circle, containing elements centerx, centery, radius.}
    \item{n_points}{positive integer setting precision of circle.}
}

\examples{
    CRdraw_circle_n( mygraphics, list(centerx = 50, centery = 50, radius = 150), 7 )
}

