library(ggplot2)
suppressMessages(library(showtext))
font_add("space-mono", regular = "SpaceMono-Regular.ttf")
font_add("open-sans", regular = "OpenSans-Regular.ttf")
showtext_auto()

black <- "#000000"
gray <- "#808080"
white <- "#ffffff"

bgcolor <- white
textcolor <- black
gridcolor <- black
tickcolor <- black

default_color <- black
fill_color <- gray
update_geom_defaults("line", list(color = default_color, size = 0.35))
update_geom_defaults("abline", list(color = default_color))
update_geom_defaults("point", list(color = default_color))
update_geom_defaults("area", list(fill = fill_color, color = bgcolor, size = 1))
update_geom_defaults("bar", list(fill = gray))
update_geom_defaults("col", list(fill = gray))

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
theme_space <- function(base_size = 8, grid = TRUE, mono = FALSE) {
    #family <- ifelse(mono, "space-mono", "open-sans")
    family <- "sans"
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