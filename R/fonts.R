#' Load [wplot] fonts
#' 
#' The fonts will be loaded into both the [`sysfonts`](https://cran.r-project.org/web/packages/sysfonts/index.html) and [`extrafont`] databases
#' 
#' @export
load_fonts <- function() {
    load_sysfonts()
    load_extrafont()
    invisible()
}

load_sysfonts <- function() {
    font_paths(font_dir())
    font_add('EB Garamond', 
             regular = 'EBGaramond-Regular.ttf',
             italic = 'EBGaramond-Italic.ttf',
             bold = 'EBGaramond-SemiBold.ttf',
             bolditalic = 'EBGaramond-SemiBoldItalic.ttf')
    font_add('Lato',
             regular = 'Lato-Regular.ttf',
             italic = 'Lato-Italic.ttf',
             bold = 'Lato-Bold.ttf',
             bolditalic = 'Lato-BoldItalic.ttf')
}

load_extrafont <- function() {
    pdfFonts <- grDevices::pdfFonts
    loadfonts(quiet = TRUE)
    if (!font_installed('EB Garamond') || !font_installed('Lato')) {
        font_import(font_dir(), prompt = FALSE)
        loadfonts(quiet = TRUE)
    }
}

font_dir <- function()
    system.file('fonts', package = 'wplot')

font_installed <- function(name)
    any(fonts() == name)