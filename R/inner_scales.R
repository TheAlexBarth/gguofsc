#' Access UofSC colors
#'
#' A function to extract official UofSC colors
#'
#'
#' @references
#' \url{https://sc.edu/about/offices_and_divisions/communications/toolbox/visuals/colors/}
#'
#' @param ... character names of uofsc colors
#'
#' @export
uofsc_cols <- function(...){
  cols <- c(...)

  if (is.null(cols)) {
    return(gguofsc_db[['cols']])
  } else {
    return(gguofsc_db[['cols']][cols])
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
uofsc_pal <- function(palette = 'simple',
                      rev = FALSE,
                      ...) {

  if(!(palette %in% names(gguofsc_db$palettes))){
    stop(paste("Must provide valid palette name:",
                paste0(names(gguofsc_db$palettes),
                             collapse = ', ')))
  }

  pal <- gguofsc_db$palettes[[palette]]

  if(rev){
    pal <- rev(pal)
  }

  colorRampPalette(pal, ...)

}
