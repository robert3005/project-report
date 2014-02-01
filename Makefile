all:
	latex Report
	bibtex Report
	latex Report
	pdflatex Report
	pdflatex Report

watch:
	./build.sh

clean:
	@# Remove all ignored files apart from sublime project settings
	git clean -e "*sublime*" -xf
