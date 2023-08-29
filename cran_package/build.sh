#!/bin/sh
R CMD build labeling
R CMD check labeling_0.4.3.tar.gz
echo "There might be problems with pdf generation. These are expected."
cp ./labeling/man/Rd.sty
