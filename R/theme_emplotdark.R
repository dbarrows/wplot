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
    text_colour <- light_gray
    tick_colour <- light_gray
    background_colour <- darkest_gray
    major_grid <- if (grid) {
        element_line(size = 0.4, linetype = "dotted", colour = grid_colour)
    } else {
        element_blank()
    }
    th <- theme_dark() +
        theme(
            text = element_text(size = base_size, colour = text_colour, family = family),
            axis.title = element_text(),
            axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
            axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
            axis.text = element_text(size = base_size - 1, family = family, colour = tick_colour),
            panel.grid = element_blank(),
            panel.grid.major = major_grid,
            axis.ticks = element_blank(),
            legend.key = element_rect(fill = "transparent"),
            legend.background = element_rect(fill = "transparent"),
            strip.background = element_rect(fill = "transparent"),
            panel.background = element_blank(),
            plot.title = element_text(hjust = -0.2, vjust = 2, size = rel(1.2), colour = text_colour),
            plot.background = element_rect(fill = background_colour, colour = NA)
        )
    update_all_geom_defaults(dark = TRUE)
    th
}