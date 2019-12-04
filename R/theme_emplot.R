#' Default emplot theme (light)
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
theme_emplot <- function(base_size = 9, grid = TRUE, serif = FALSE) {
    family <- ifelse(serif, "et-book", "lato")
    theme_bw(base_size = base_size) +
    theme(
        line = element_line(),
        rect = element_rect(fill = "transparent", linetype = 0, colour = NA),
        text = element_text(size = base_size, color = textcolor, family = family),
        axis.title = element_text(),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        axis.text = element_text(size = base_size - 1, family = family, color = tickcolor),
        axis.ticks = element_blank(),
        legend.key = element_rect(fill = "transparent"),
        panel.grid = element_blank(),
        panel.grid.major = element_line(colour = gridcolor, linetype = "dotted", size = ifelse(grid, 0.075, 0)),
        panel.background = element_rect(fill = "transparent"),
        plot.title = element_text(hjust = -0.2, vjust = 2, size = rel(1.2), color = textcolor),
        plot.margin = margin(1, 1, 1, 1, "cm"),
        plot.background = element_rect(fill = bgcolor),
        strip.background = element_rect(fill = "transparent")
    )
}

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
    theme_emplot(base_size, grid, serif)
}
