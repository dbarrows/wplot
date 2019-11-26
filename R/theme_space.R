#' Default space theme (light)
#'
#' Add to a ggplot2 plot object to apply.
#'
#' @param base_size base font size
#' @param grid show grid lines
#' @param mono use monospace font
#'
#' @return theme object
#' @export
#' @import ggplot2
theme_space <- function(base_size = 10, grid = TRUE, mono = FALSE) {
    family <- ifelse(mono, "space-mono", "open-sans")
    theme_bw(base_size = base_size) +
    theme(
        line = element_line(),
        rect = element_rect(fill = bgcolor, linetype = 0, colour = NA),
        text = element_text(size = base_size, color = textcolor, family = family),
        axis.title = element_text(),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        axis.text = element_text(size = base_size - 1, family = family, color = tickcolor),
        axis.ticks = element_blank(),
        legend.key = element_rect(fill = bgcolor),
        panel.grid = element_blank(),
        panel.grid.major = element_line(colour = gridcolor, linetype = "dotted", size = ifelse(grid, 0.1, 0)),
        plot.title = element_text(hjust = -0.2, vjust = 2, size = rel(1.2), color = textcolor),
        plot.margin = margin(0.75, 0.75, 0.75, 0.75, "cm"),
        plot.background = element_rect(),
        strip.background = element_rect(fill = "transparent")
    )
}
