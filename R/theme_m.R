#' Default mplot theme (light)
#'
#' Add to a ggplot2 plot object to apply.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param serif use serif font
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_m <- function(base_size = 9, grid = TRUE, serif = FALSE) {
    update_all_geom_defaults()
    family <- if(serif) "eb-garamond" else "lato"
    major_grid <- if (grid) {
        element_line(colour = grid_colour, linetype = "dotted", size = 0.4)
    } else {
        element_blank()
    }
    theme_bw(base_size = base_size) +
    theme(
        line = element_line(),
        rect = element_rect(fill = "transparent", linetype = 0, colour = NA),
        text = element_text(size = base_size, colour = text_colour, family = family),
        axis.title = element_text(),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        axis.text = element_text(size = base_size - 1, family = family, colour = tick_colour),
        axis.ticks = element_blank(),
        legend.key = element_rect(fill = "transparent"),
        panel.grid = element_blank(),
        panel.grid.major = major_grid,
        panel.background = element_rect(fill = "transparent"),
        plot.title = element_text(hjust = -0.2, vjust = 2, size = rel(1.2), colour = text_colour),
        plot.background = element_rect(fill = background_colour),
        strip.background = element_rect(fill = "transparent")
    )
}