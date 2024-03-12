\name{CRfill_polygon}
\alias{CRfill_polygon}
\title{
    Draws filled polygon.
}
\description{
    Draws filled polygon defined in polygon_list to rendering target. Polygon is defined by ordered vertices (x,y).
}
\usage{
CRfill_polygon(graphics_list, polygon_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{polygon_list}{List defining a polygon, containing vector-elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRfill_polygon} uses "scanline" method to fill polygon. See \code{CRdraw_polygon} for an example.
}