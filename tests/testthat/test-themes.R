test_that('Themes load', {
    p <- ggplot2::ggplot(ggplot2::mpg, aes(displ)) +
            ggplot2::geom_histogram()
    expect_silent({
        p + theme_wl()
    })
    expect_silent({
        p + theme_wd()
    })
    expect_silent({
        p + theme_wc()
    })
    expect_silent({
        p + theme_wt()
    })
})
