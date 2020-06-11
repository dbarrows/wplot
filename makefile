.PHONEY: install, readme, check, site
install:
	@Rscript -e 'devtools::install()'
readme:
	@Rscript -e 'rmarkdown::render("README.Rmd")'
check:
	@Rscript -e 'devtools::check()'
site:
	@Rscript -e "devtools::document(); pkgdown::build_site()"