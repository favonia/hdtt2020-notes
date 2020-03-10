ALL_NOTES=$(wildcard notes*.tex)
ALL_PDFS=${ALL_NOTES:.tex=.pdf}
LATEX_AUX_FILES=hdtt2020.sty references.bib

.phony: pdf
pdf: ${ALL_PDFS}

${ALL_PDFS}:%.pdf:%.tex ${LATEX_AUX_FILES}
	latexmk ${@:.pdf=}

.phony: clean
clean:
	latexmk -C ${ALL_NOTES:.tex=}
