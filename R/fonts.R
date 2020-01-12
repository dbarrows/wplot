load_fonts <- function() {
    font_paths(system.file("fonts", package = "emplot"))
    font_add("et-book", regular = "et-book-roman-line-figures.ttf")
    font_add("lato", regular = "Lato-Regular.ttf")
    showtext_auto()
}