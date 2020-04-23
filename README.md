
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Emplot

<!-- badges: start -->

<!-- badges: end -->

A clean theme for `ggplot2` with matching `geom` defaults.

## Installation

Install from [GitHub](https://github.com/) using the
[devtools](https://cran.r-project.org/web/packages/devtools) package:

``` r
devtools::install_github("dbarrows/emplot")
```

Possible CRAN version in the future.

## Examples

``` r
library(ggplot2)
library(emplot)
```

``` r
ggplot(mpg, aes(displ, hwy, color = class)) +
    geom_point()
```

<img src="man/figures/README-scatter-1.svg" width="100%" />

``` r
ggplot(mpg, aes(displ)) +
    geom_histogram(bins = 30)
```

<img src="man/figures/README-histogram-1.svg" width="100%" />

## Options

The grid can be forced on/off with the `grid` option:

``` r
library(tidyverse)
library(gapminder)
as_tibble(gapminder) %>%
    mutate(cc = I(country_colors[match(country, names(country_colors))])) %>%
    filter(continent %in% c("Africa", "Europe") & year == 2007) %>%
    ggplot(aes(log(gdpPercap), lifeExp)) +
        geom_point(aes(colour = cc, size = sqrt(pop/pi)/1500)) +
        theme_emplot(grid = FALSE) +
        theme(legend.position = "none")
```

<img src="man/figures/README-grid_off-1.svg" width="100%" />

The font can be changed to a serif with the `serif` option (for the
[Tufte](https://www.edwardtufte.com/tufte/) look):

``` r
ggplot(iris, aes(Petal.Length)) +
    geom_histogram(bins = 30) +
    scale_y_continuous(breaks = seq(5, 25, by = 5)) +
    geom_hline(yintercept = seq(5, 25, by = 5), col = "white") +
    theme_emplot(grid = FALSE, serif = TRUE)
```

<img src="man/figures/README-serif_on-1.svg" width="100%" />

``` r
library(tidyverse)
mpg %>%
    mutate(cyl = as.factor(cyl)) %>%
    ggplot(aes(displ, hwy, color = cyl)) +
        geom_point() +
        geom_smooth(method = lm, se = FALSE) +
        theme_emplot(grid = FALSE, serif = TRUE) +
        scale_color_grey(end = 0.75)
#> `geom_smooth()` using formula 'y ~ x'
```

<img src="man/figures/README-tufte_line-1.svg" width="100%" />

You can also use `theme_emtufte` to reproduce the Tufte look
out-of-the-box:

``` r
mtcars %>%
    ggplot(aes(disp, hp)) +
        geom_point() +
        theme_emtufte()
```

<img src="man/figures/README-tufte_scatter-1.svg" width="100%" />
