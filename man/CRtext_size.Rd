\name{CRtext_size}
\alias{CRtext_size}
\title{
    Predicts text dimensions.
}
\description{
    Calculates width and height of un-wrapped text when rendered using the indexed font in font_list.
}
\usage{
CRtext_size(font_list, index, text)
}
\arguments{
    \item{font_list}{a list of fonts loaded with \code{CRload_font()}.}
    \item{index}{an index into font_list, specifying which font to use.}
    \item{text}{character vector specifying text to be drawn.}
}
\value{
    Returns a list with elements width and height.
}
