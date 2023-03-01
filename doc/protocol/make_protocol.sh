#!/bin/bash

# cleanup before compilation
rm *.aux
rm *.log
rm *.out

# create file for storing the minor version number
git rev-list --count main > minor_version.txt

# compile document
pdflatex protocol-HessenKohorte2040.tex
bibtex protocol-HessenKohorte2040.aux
pdflatex protocol-HessenKohorte2040.tex
pdflatex protocol-HessenKohorte2040.tex

# cleanup after compilation
rm *.aux
rm *.log
rm *.out
rm *.lof
rm *.blg
rm *.bbl
rm *.lot
rm *.toc
