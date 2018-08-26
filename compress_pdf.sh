#!/bin/bash
var=$(pwd)
mkdir $HOME/pdf_output
for f in *.pdf; do gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="$HOME/pdf_output/$(basename "$f")" "$var"/"$f" ; done
