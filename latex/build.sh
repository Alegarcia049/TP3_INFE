#!/usr/bin/env bash
# Build LaTeX document locally

pdflatex -output-directory build main.tex
bibtex build/main || true
pdflatex -output-directory build main.tex
pdflatex -output-directory build main.tex

echo "PDF generated in latex/build/main.pdf"