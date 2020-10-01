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
    Returns response_list specifying the polled response (list is null if no event to be polled).
}
\details{
  \code{CRpoll_event()} returns a \emph{response_list}.
  
  Distinguish type of reaction (keyboard, mouse, etc.) by element \emph{type}. Possible types are "key_down", "key_up", "mouse_button_down", "mouse_button_up", "mouse_motion" and "quit".
  
  Distinguish specific reaction by element \emph{code}. For example, the left mouse button is code 1, the right button is code 3. Keyboard codes can be looked up at https://wiki.libsdl.org/SDLKeycodeLookup.
  
  For mouse events, elements \emph{x} and \emph{y} indicate the mouse's position in the window.
}
