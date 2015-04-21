#!/bin/bash
TeX=$1
if [ -a $TeX.tex ]
then

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

else
echo "$TeX.tex does not exist"
fi
