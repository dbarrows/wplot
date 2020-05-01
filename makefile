.PHONEY: install, readme, check
install:
	@Rscript -e 'devtools::install()'
readme:
	@make install && Rscript -e 'rmarkdown::render("README.Rmd")'
check:
	@Rscript -e 'devtools::check()'