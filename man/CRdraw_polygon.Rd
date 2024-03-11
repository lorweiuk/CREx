\name{CRdraw_polygon}
\alias{CRdraw_polygon}
\title{
    Draws polygon.
}
\description{
    Draws polygon defined in polygon_list to rendering target. Polygon is defined by ordered vertices (x, y).
}
\usage{
CRdraw_polygon(graphics_list, polygon_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{polygon_list}{List defining a polygon, containing vector-elements x and y.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\details{
    \code{CRdraw_polygon} internally uses same drawing method as \code{CRdraw_lines}.
}