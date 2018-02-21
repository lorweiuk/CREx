isGraphicsList <- function(objin) {
  # check if objin is graphics_list
  if ( "window" %in% names(objin) && "renderer" %in% names(objin) && "surface" %in% names(objin) && "event" %in% names(objin) && "timer_resolution" %in% names(objin) && "timer_lag" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isWavList <- function(objin) {
  # check if objin is wav_list
  if ( "wavfile" %in% names(objin) && "names" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isImageList <- function(objin) {
  # check if objin is image_list
  if ( "imagefile" %in% names(objin) && "names" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isTextureList <- function(objin) {
  # check if objin is texture_list
  if ( "texturefile" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isFontList <- function(objin) {
    # check if objin is texture_list
    if ( "fontfile" %in% names(objin) ) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

isColorList <- function(objin) {
  # check if objin is color_list
  if ("r" %in% names(objin) && "g" %in% names(objin) && "b" %in% names(objin)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isRectList <- function(objin) {
  # check if objin is rect_list
  if ( "x" %in% names(objin) && "y" %in% names(objin) && "w" %in% names(objin) && "h" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isCircleList <- function(objin) {
  # check if objin is circle_list
  if ( "centerx" %in% names(objin) && "centery" %in% names(objin) && "radius" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isLineList <- function(objin) {
  # check if objin is line_list
  if ( "x1" %in% names(objin) && "y1" %in% names(objin) && "x2" %in% names(objin) && "y2" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

isPointList <- function(objin) {
  # check if objin is point_list
  if ( "x" %in% names(objin) && "y" %in% names(objin) ) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

orderGraphicsList <- function(objin) {
  # if provided graphics_list, brings it into order
  if (isGraphicsList(objin)  &&  names(objin) != c("window","surface","renderer","event","width","height","timer_resolution","timer_lag")) {
    # unordered graphics_list
    return( list(window = objin$window, surface = objin$surface, renderer = objin$renderer, event = objin$event, width = objin$width, height = objin$height, timer_resolution = objin$timer_resolution, timer_lag = objin$timer_lag ) )
  
  } else if (isGraphicsList(objin)  &&  names(objin) == c("window","surface","renderer","event","width","height","timer_resolution","timer_lag")) {
    # ordered graphics_list
    return(objin)
  } else {
    # something else
    print("Input to \"orderGraphicsList()\" was no graphics list.")
  }
    
}


isActive <- function(objin) {
  # check if structure was closed yet
  # returns FALSE if a known structure has null pointers
  # otherwise (for unknown structures), returns TRUE
  
  # is graphics_list
  if ( isGraphicsList(objin) ) {
    if ( !is.null(objin$window) && !is.null(objin$renderer) && !is.null(objin$surface) && !is.null(objin$event) ) {
      return(TRUE)
    } else {
      return(FALSE)
    }
    
  } else if ( isWavList(objin) ) {
    # is wav_list
    if ( !all(is.null(objin$wavfile)) ) {
      return(TRUE)
    } else {
      return(FALSE)
    }
    
  } else if ( isImageList(objin) ) {
    # is image_list
    if ( !all(is.null(objin$imagefile)) ) {
      return(TRUE)
    } else {
      return(FALSE)
    }
    
  } else if ( isTextureList(objin) ) {
    # is texture list
    if ( !all(is.null(objin$texturefile)) ) {
      return(TRUE)
    } else {
      return(FALSE)
    }
    
  } else {
    # for everything else ... be permissive
    return(TRUE)
  }
}






