
<!-- README.md is generated from README.Rmd. Please edit that file -->

# spaceplot

<!-- badges: start -->

<!-- badges: end -->

A clean theme for `ggplot2`, and some `geom` defaults to match.

## Installation

Install from [GitHub](https://github.com/) using the
[devtools](https://cran.r-project.org/web/packages/devtools) package:

``` r
#devtools::install_github("dbarrows/spaceplot")
```

Possible CRAN version in the future.

## Examples

``` r
library(spaceplot)
ggplot(mpg, aes(displ, hwy, color = class)) + geom_point() + theme_space()
```

<img src="man/figures/README-scatter-1.svg" width="100%" />
