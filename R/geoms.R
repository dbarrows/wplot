line_size <- 0.5
point_size <- 1

update_all_geom_defaults <- function() {
    update_geom_defaults("line", list(color = default_color, size = line_size))
    update_geom_defaults("abline", list(color = default_color, size = line_size))
    update_geom_defaults("hline", list(color = default_color, size = line_size))
    update_geom_defaults("smooth", list(color = default_color, size = line_size))
    update_geom_defaults("point", list(color = default_color, size = point_size))
    update_geom_defaults("area", list(fill = fill_color, color = bgcolor, size = line_size))
    update_geom_defaults("density", list(fill = fill_color, color = bgcolor, size = line_size))
    update_geom_defaults("bar", list(fill = fill_color, size = 1, color = "white"))
    update_geom_defaults("col", list(fill = fill_color, size = 1, color = "white"))
}