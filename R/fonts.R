#' Load mplot fonts
#'
#' @export
load_fonts <- function() {
    font_paths(system.file("fonts", package = "mplot"))
    font_add("eb-garamond", regular = "EBGaramond-Regular.ttf",
                            italic = "EBGaramond-Italic.ttf",
                            bold = "EBGaramond-SemiBold.ttf",
                            bolditalic = "EBGaramond-SemiBoldItalic.ttf")
    font_add("lato", regular = "Lato-Regular.ttf",
                     italic = "Lato-Italic.ttf",
                     bold = "Lato-Bold.ttf",
                     bolditalic = "Lato-BoldItalic.ttf")
    showtext_auto()
    invisible()
}