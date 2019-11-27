
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Emplot

<!-- badges: start -->

<!-- badges: end -->

A clean theme for `ggplot2` with matching `geom` defaults.

## Installation

Install from [GitHub](https://github.com/) using the
[devtools](https://cran.r-project.org/web/packages/devtools) package:

``` r
devtools::install_github("dbarrows/spaceplot")
```

Possible CRAN version in the future.

## Examples

``` r
library(ggplot2)
library(emplot)

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
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
    geom_point() +
    geom_smooth(method = lm, alpha = 0.25) +
    theme_emplot(grid = FALSE)
```

<img src="man/figures/README-grid_off-1.svg" width="100%" />

The font can be changed to a serif with the `serif` option:

``` r
ggplot(iris, aes(Petal.Length)) +
    geom_histogram(bins = 30) +
    scale_y_continuous(breaks = seq(5, 25, by = 5)) +
    geom_hline(yintercept = seq(5, 25, by = 5), col = "white", size = 1) +
    theme_emplot(grid = FALSE, serif = TRUE)
```

<img src="man/figures/README-serif_on-1.svg" width="100%" />
