\name{CRpoll_event}
\alias{CRpoll_event}
\title{
    Polls next event in event queue.
}
\description{
    Polls next event in event queue provided in graphics_list.
}
\usage{
    CRpoll_event(graphics_list, status = NULL)
}
\arguments{
    \item{graphics_list}{List containing pointers to window, renderer etc. created with \code{CRopen}.}
    \item{status}{Optional list \code{status} with elements \code{value} and \code{message} to retrieve warnings and error messages.}
}
\value{
    Returns \code{NULL} if no response is present in queue. Otherwise, a response_list specifying the polled response. Response_list contains elements \code{type} (type of event), \code{code} (specific event), \code{label} (description of event), \code{state} (some qualifying information of event), \code{val} (value for event), \code{x} and \code{y} (e.g. mouse coordinates), and \code{timestamp} (time of event).
}
\details{
  \code{CRpoll_event} returns a \emph{response_list}.
  
  Distinguish type of response (keyboard, mouse, etc.) by element \emph{type}. Possible types are "key_down", "key_up", "mouse_button_down", "mouse_button_up", "mouse_motion", "mouse_wheel", "window_event", "controller_button_down", "controller_button_up", "controller_axis_motion", "quit".
  
  Distinguish specific reaction by element \emph{code}. Keyboard codes can be converted to Utf-8 strings via \code{intToUtf8} or looked up at https://wiki.libsdl.org/SDLKeycodeLookup.
  
  \emph{label} gives more understandable descriptions of some events, such as window-events.
  
  \emph{state} encodes several keyboard states.
  
  For mouse events, elements \emph{x} and \emph{y} indicate the mouse's position in the window area.

  Element \emph{timestamp} indicates when the OS registered the response.
}
