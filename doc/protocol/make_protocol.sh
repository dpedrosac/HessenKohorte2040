#!/bin/bash
rm *.aux
rm *.log
rm *.out

pdflatex protocol-HessenKohorte2040.v1.0.tex
bibtex protocol-HessenKohorte2040.v1.0.aux
pdflatex protocol-HessenKohorte2040.v1.0.tex
pdflatex protocol-HessenKohorte2040.v1.0.tex
