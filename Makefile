LATEX = latexmk -pdf -interaction=nonstopmode -halt-on-error
NAME = Herberth-Diego-Ruas-Caldeira
DATE = $(shell date +%Y-%m)

.PHONY: all pt en clean

all: pt en

pt:
	$(LATEX) -outdir=pt pt/curriculo.tex
	cp pt/curriculo.pdf "$(NAME)-Curriculo-$(DATE).pdf"

en:
	$(LATEX) -outdir=en en/resume.tex
	cp en/resume.pdf "$(NAME)-Resume-$(DATE).pdf"

clean:
	latexmk -C -outdir=pt pt/curriculo.tex
	latexmk -C -outdir=en en/resume.tex
	rm -f "$(NAME)"-*.pdf
