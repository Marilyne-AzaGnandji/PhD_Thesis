#!/bin/bash

TARGET="fastqc_multiqc"

pdflatex ${TARGET}.tex
bibtex ${TARGET}
pdflatex ${TARGET}.tex
pdflatex ${TARGET}.tex

exit 0
