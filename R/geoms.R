line_size <- 0.5
point_size <- 1.5

update_all_geom_defaults <- function(dark = FALSE) {
    if (dark) {
        default_colour <- light_gray
        fill_colour <- gray
        background_colour <- darkest_gray
    }
    update_geom_defaults("line", list(colour = default_colour, size = line_size))
    update_geom_defaults("abline", list(colour = default_colour, size = line_size))
    update_geom_defaults("hline", list(colour = default_colour, size = line_size))
    update_geom_defaults("smooth", list(colour = default_colour, size = line_size))
    update_geom_defaults("point", list(colour = default_colour, size = point_size))
    update_geom_defaults("area", list(fill = fill_colour, colour = "transparent", size = line_size))
    update_geom_defaults("density", list(fill = fill_colour, colour = "transparent", size = line_size))
    update_geom_defaults("ribbon", list(fill = fill_colour, colour = "transparent", alpha = 0.1))
    update_geom_defaults("smooth", list(fill = fill_colour, colour = default_colour, alpha = 0.1))
    update_geom_defaults("bar", list(fill = fill_colour, size = 0.5, colour = background_colour))
    update_geom_defaults("col", list(fill = fill_colour, size = 0.5, colour = background_colour))
    invisible()
}