#!/bin/bash -

TARGET="atropos"

pdflatex ${TARGET}.tex
bibtex ${TARGET}
pdflatex ${TARGET}.tex
pdflatex ${TARGET}.tex

exit 0
