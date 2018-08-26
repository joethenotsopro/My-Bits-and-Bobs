# To use it, copy the 4 lines of code (lines 9-12) into a file called compress_pdf.sh and then:
#
# cp compress_pdf.sh $HOME/bin
# chmod +x $HOME/bin/compress_pdf.sh
#
# Open up a terminal window in your PDF files directory and then run the script... the script creates a directory
# called $HOME/pdf_output # then compresses the PDF's into that directory. It leaves the originals intact.


#!/bin/bash
var=$(pwd)
mkdir $HOME/pdf_output
for f in *.pdf; do gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="$HOME/pdf_output/$(basename "$f")" "$var"/"$f" ; done


# You change -dPDFSETTINGS= to adjust the compression settings:
#
# /screen – Lowest quality, lowest size
# /ebook – Moderate quality
# /printer – Good quality
# /prepress – Best quality, highest size
