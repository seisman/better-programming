PANDOC = pandoc
ALLRST = $(wildcard *.rst)
OUT = better-programming
TEMPLATE = template.tex
LATEX = xelatex
OPTIONS = --toc --latex-engine=$(LATEX) --highlight-style pygments

all: pdf tex

pdf:
	$(PANDOC) $(ALLRST) -o $(OUT).pdf $(OPTIONS) --template=$(TEMPLATE)
tex:
	$(PANDOC) $(ALLRST) -o $(OUT).tex $(OPTIONS) --template=$(TEMPLATE)
