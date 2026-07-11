LATEX = latexmk -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all pt en clean

all: pt en

pt:
	$(LATEX) -outdir=pt pt/curriculo.tex

en:
	$(LATEX) -outdir=en en/resume.tex

clean:
	latexmk -C -outdir=pt pt/curriculo.tex
	latexmk -C -outdir=en en/resume.tex
