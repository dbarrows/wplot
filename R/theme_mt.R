#' mplot Tufte theme
#'
#' Similar to the default theme, but with Tufte-esque defaults.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param serif use serif font
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_mt <- function(base_size = 10, grid = FALSE, serif = TRUE) {
    th <- theme_mc()
    th$plot.background$fill <- bgtufte
    th
}