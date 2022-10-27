#' Access usc colors
#'
#' A function to extract official usc colors
#'
#'
#' @references
#' \url{https://sc.edu/about/offices_and_divisions/communications/toolbox/visuals/colors/}
#'
#' @param ... character names of usc colors
#'
#' @export
usc_cols <- function(...){
  cols <- c(...)

  if (is.null(cols)) {
    return(ggusc_db[['cols']])
  } else {
    return(ggusc_db[['cols']][cols])
  }
}

#' Palette interpolator
#'
#' This will interpolate between colors
#'
#' @param palette char name of palette
#' @param rev boolean ot reverse palette
#' @param ... additional to pass to colorRampPalette
#'
#' @importFrom grDevices colorRampPalette
#' @export
usc_pal <- function(palette = 'simple',
                      rev = FALSE,
                      ...) {

  if(!(palette %in% names(ggusc_db$palettes))){
    stop(paste("Must provide valid palette name:",
                paste0(names(ggusc_db$palettes),
                             collapse = ', ')))
  }

  pal <- ggusc_db$palettes[[palette]]

  if(rev){
    pal <- rev(pal)
  }

  colorRampPalette(pal, ...)

}
