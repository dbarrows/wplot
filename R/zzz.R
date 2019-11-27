#' @import ggplot2 sysfonts showtext
.onLoad <- function(libname, pkgname) {
    update_geom_defaults("line", list(color = default_color, size = line_size))
    update_geom_defaults("abline", list(color = default_color, size = line_size))
    update_geom_defaults("smooth", list(size = line_size))
    update_geom_defaults("point", list(color = default_color, size = point_size))
    update_geom_defaults("area", list(fill = fill_color, color = bgcolor, size = line_size))
    update_geom_defaults("bar", list(fill = gray))
    update_geom_defaults("col", list(fill = gray))

    font_paths(system.file("fonts", package = "spaceplot"))
    font_add("et-book", regular = "et-book-roman-line-figures.ttf")
    font_add("lato", regular = "Lato-Regular.ttf")
    showtext_auto()

    theme_set(theme_space())
}
