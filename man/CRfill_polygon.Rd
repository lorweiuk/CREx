\name{CRfill_polygon}
\alias{CRfill_polygon}
\title{
    Draws filled polygon.
}
\description{
    Draws filled polygon defined in polygon_list to rendering target; polygon is defined by ordered vertices (x,y).
}
\usage{
CRfill_polygon(graphics_list, polygon_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{polygon_list}{list defining a polygon, containing vector-elements x and y.}
}
\details{
    \code{CRfill_polygon} uses "scanline" method to fill polygon.
}