#!/bin/sh
R CMD build labeling
R CMD check labeling_0.4.3.tar.gz
echo "There might be problems with pdf generation. These are expected."

echo "Building labeling.pdf with xelatex instead"
cp ./labeling/man/Rd.sty ./labeling.Rcheck
cd labeling.Rcheck
xelatex labeling-manual.tex
cp labeling-manual.pdf ../

R CMD check --as-cran labeling

