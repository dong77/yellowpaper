#!/bin/sh
#
# Copyright 2015 Alipay Inc. All Rights Reserved.
# Author: hoss.mc@alibaba-inc.com (Ma Chao)

if [ $1 == 'zh' ]; then
    xelatex Paper_zh && bibtex Paper_zh  && xelatex Paper_zh && xelatex Paper_zh
elif [ $1 == 'en' ]; then
    pdflatex Paper_en && bibtex Paper_en  && pdflatex Paper_en && pdflatex Paper_en
elif [ $1 == 'c' ]; then
    rm *.aux *.log *.bbl *.blg *.dvi *.pdf
else
    echo 'bad param'
fi
