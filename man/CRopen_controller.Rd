\name{CRopen_controller}
\alias{CRopen_controller}
\title{
    Opens gamecontroller.
}
\description{
    Scans available devices, opens first gamecontroller among them, returns address of controller for eventual closing of device. In order to receives controller inputs via \code{CRpoll_event}, controller has to be opened first.
}
\usage{
CRopen_controller(status = NULL)
}
\value{
    Returns list containing pointer to gamecontroller. Also contains integer \code{valid} of value \code{1} if everything went well and a controller was found and opened, \code{0} otherwise.
}
\examples{
  gc <- CRopen_controller()
  
  CRwait_ms(1000)
  
  CRclose(gc)
}