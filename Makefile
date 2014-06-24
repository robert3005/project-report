.PHONY: report watch clean all presentation

all: report presentation

presentation:
	pdflatex Presentation

report:
	latex Report
	bibtex Report
	pdflatex Report

watch-report:
	./build.sh Report.tex

watch-presentation:
	./build.sh Presentation.tex

clean:
	@# Remove all ignored files apart from sublime project settings
	git clean -e "*sublime*" -xf
