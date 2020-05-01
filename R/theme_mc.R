#' mplot classic theme
#'
#' Similar to the default theme, but with larger serif font and no gridlines.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param serif use serif font
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_mc <- function(base_size = 10, grid = FALSE, serif = TRUE) {
    th <- theme_m(base_size, grid, serif)
    update_all_geom_defaults(classic = TRUE)
    th
}