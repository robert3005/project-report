all:
	latex Report
	bibtex Report
	pdflatex Report
	pdflatex Report

watch:
	./build.sh

clean:
	rm -f *.synctex.gz *.fdb_latexmk *.aux *.bbl *.blg *.dvi *.toc *.log
