#!/bin/bash

TARGET="revue_bibliographique"

pdflatex ${TARGET}.tex
bibtex ${TARGET}
pdflatex ${TARGET}.tex
pdflatex ${TARGET}.tex

exit 0
