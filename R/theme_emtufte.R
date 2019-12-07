#' Tufte emplot theme
#'
#' Simular to the default theme, but with Tufte-esque defaults.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param serif use serif font
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_emtufte <- function(base_size = 10, grid = FALSE, serif = TRUE) {
    theme_tufte <- theme_emplot(base_size, grid, serif)
    theme_tufte$plot.background$fill <- bgtufte
    theme_tufte
}
