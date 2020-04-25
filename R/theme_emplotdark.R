#' Emplot dark theme
#'
#' Add to a ggplot2 plot object to apply.
#'
#' @param base_size base font size
#' @param grid show grid lines
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_emplotdark <- function(base_size = 9, grid = TRUE) {
    family <- "lato"
    grid_colour <- dark_gray
    text_colour <- white
    tick_colour <- white
    background_colour <- darkest_gray
    major_grid <- if (grid) {
        element_line(colour = grid_colour, linetype = "dotted", size = 0.4)
    } else {
        element_blank()
    }
    th <- theme_emplot(base_size = base_size) +
        theme(
            text = element_text(size = base_size, colour = text_colour, family = family),
            axis.text = element_text(size = base_size - 1, family = family, colour = tick_colour),
            panel.grid.major = major_grid,
            plot.title = element_text(hjust = -0.2, vjust = 2, size = rel(1.2), colour = text_colour),
            plot.background = element_rect(fill = background_colour)
        )
    update_all_geom_defaults(dark = TRUE)
    th
}