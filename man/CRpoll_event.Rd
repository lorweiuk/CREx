\name{CRpoll_event}
\alias{CRpoll_event}
\title{
    Polls next event in event queue.
}
\description{
    Polls next event in event queue provided in graphics_list.
}
\usage{
    CRpoll_event(graphics_list)
}
\arguments{
    \item{graphics_list}{a list containing pointers to window, renderer etc. created with \code{CRopen}.}
}
\value{
    Returns list of data specifying response polled (list is null if no event to polled).
}
\details{
  Distinguish type of reaction (key,mouse,etc.) by $type.
  Distinguish specific reaction by code (which key was pressed? which mouse button pressed?).
  Keycodes can be looked up at https://wiki.libsdl.org/SDLKeycodeLookup.
  
  Mouse button code: 1 = left button, 2 = middle button, 3 = right button.
  
  Mouse motion is always code == 1, x and y indicate x and y coordinates.
  
  Code -1 means quit-X was pressed.

  Types:
  1025 mouse button down
  1026 mouse button up
  1024 mouse motion
  768 key down
  769 key up
}
