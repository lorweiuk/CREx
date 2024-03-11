\name{CRtext_size}
\alias{CRtext_size}
\title{
    Predicts text dimensions.
}
\description{
    Calculates width and height of un-wrapped text when rendered using the indexed font in font_list.
}
\usage{
CRtext_size(font_list, index, text, status = NULL)
}
\arguments{
    \item{font_list}{List of fonts loaded with \code{CRload_font()}.}
    \item{index}{Index into font_list, specifying which font to use.}
    \item{text}{Character vector specifying text to be drawn.}
}
\value{
    Returns a list with elements width and height.
}
