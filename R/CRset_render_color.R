#' Sets render drawing color
#'
#' Sets render drawing color; this is the color used by the drawing functions: CRrdaw_rect, CRdraw_lines, CRfill_rect, CRfill_circle, etc.
#' param graphics_list a list created with CRopen(), containing pointers to window, renderer, surface and event
#' param color_list list specifying color to be used (must contain r, g, b, and optionally a; to use a, call CRallow_alpha() first)

CRset_render_color <- function(graphics_list, color_list) {

  if ( !isGraphicsList(graphics_list) ) {
    stop("Input structure must be \"graphics_list\".")
  }
  if ( !isColorList(color_list)) {
    stop("Input structure must be \"color list\".")
  }
  
  
  graphics_list = orderGraphicsList(graphics_list)
  if ( !("a" %in% names(color_list)) ) {
    invisible( .Call("SDLset_render_color", graphics_list, color_list$r, color_list$g, color_list$b, 255, PACKAGE = "CREx") )

  } else {
    invisible( .Call("SDLset_render_color", graphics_list, color_list$r, color_list$g, color_list$b, color_list$a, PACKAGE = "CREx") )

  }
}
