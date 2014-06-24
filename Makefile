.PHONY: report watch clean all presentation

all: report presentation

presentation:
	pdflatex Presentation

report:
	latex Report
	bibtex Report
	pdflatex Report

watch:
	./build.sh

clean:
	@# Remove all ignored files apart from sublime project settings
	git clean -e "*sublime*" -xf
