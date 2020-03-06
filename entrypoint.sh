#!/bin/bash -l

OIFS="$IFS"
IFS=$'\n'
for IN in `find $1 -iname "*.*" -o -iname "*.pdf"`
do
OUT=${IN/$1/$3}
DIR=$(dirname $OUT)
mkdir -p "$DIR"
if [ ! -f $OUT ]; then
echo "Converting $IN"
img2pdf --output "${OUT%.*}.pdf" --pagesize $2 --border 0.2cm:0.2cm $IN
else
echo "Converted already."
fi

done
IFS="$OIFS"

