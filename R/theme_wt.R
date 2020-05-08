#' wplot Tufte theme
#'
#' Similar to the default theme, but with Tufte-esque defaults.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param serif use serif font
#'
#' @return theme object
#' @export
theme_wt <- function(base_size = 10, grid = FALSE, serif = TRUE) {
    th <- theme_wc()
    th$plot.background$fill <- bgtufte
    th
}