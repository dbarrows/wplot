#' @import ggplot2 sysfonts showtext
.onLoad <- function(libname, pkgname) {
    update_all_geom_defaults()
    load_fonts()
    theme_set(theme_emplot())
}