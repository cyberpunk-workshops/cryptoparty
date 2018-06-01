#!/bin/sh
cd `dirname "$0"`
NAME=`basename "$0" .sh` 
pdflatex "$NAME.tex" &&
(test -x "$NAME.nlo" && makeindex "$NAME.nlo" -s nomencl.ist -o "$NAME.nls" || true) &&
pdflatex "$NAME.tex" &&
pdflatex "$NAME.tex"
find . -name "$NAME*" ! \( -name '*tex' -or -name '*pdf' -or -name '*sh' \) -delete
