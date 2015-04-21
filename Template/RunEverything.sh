#!/bin/bash
TeX=$1
if [ -a $TeX.tex ]
then
pdflatex $TeX.tex
pdflatex $TeX.tex
bibtex $TeX.aux
bibtex bu1.aux
makeglossaries $TeX
pdflatex $TeX.tex
pdflatex $TeX.tex

echo "If you would like this script to remove unnecessary file, uncomment the following commands. Remember, deleting files such as .glo will remove data required for the generation of the glossaries and will therefore not be shown in the pdf the next time you run PdfLaTeX"

<<comment1
echo "Removing unnecessary files, If desired comment the related lines in RunEverything"
rm bu.aux
rm bu1.aux
rm bu1.bbl
rm bu1.blg
rm $TeX.acn
rm $TeX.acr
rm $TeX.alg
rm $TeX.aux
rm $TeX.bbl
rm $TeX.blg
rm $TeX.glo
rm $TeX.ist
rm $TeX.lof
rm $TeX.lot
rm $TeX.out
rm $TeX.toc
comment1

else
echo "$TeX.tex does not exist"
fi
