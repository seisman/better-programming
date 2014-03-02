PANDOC = pandoc
ALLRST = $(wildcard *.rst)
PDFOUT = better-programming.pdf
TEMPLATE = template.tex
LATEX = xelatex
OPTIONS = --toc --latex-engine=$(LATEX) --highlight-style pygments

all:
	$(PANDOC) $(ALLRST) -o $(PDFOUT) $(OPTIONS) --template=$(TEMPLATE)

