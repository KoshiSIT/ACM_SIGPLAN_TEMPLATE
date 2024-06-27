MAIN = main

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
.PHONY: all clean

