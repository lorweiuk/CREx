\name{CRdraw_polygon}
\alias{CRdraw_polygon}
\title{
    Draws polygon.
}
\description{
    Draws polygon defined in polygon_list to rendering target; polygon is defined by ordered vertices (x,y).
}
\usage{
CRdraw_polygon(graphics_list, polygon_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{polygon_list}{list defining a polygon, containing vector-elements x and y.}
}
\details{
    \code{CRdraw_polygon} uses draw_lines internally.
}