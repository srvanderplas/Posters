#!/bin/bash
for f in DLData/*.tiff; do
  a=$(basename -s .tiff $f);
  b=$(dirname $f);
  tiff2pdf -j -q 99 -x 300 -y 300 -f -o "$b/$a.pdf" $f;
done;
