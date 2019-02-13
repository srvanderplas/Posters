#!/bin/bash

for f in DLData/*.tiff; do
  a=$(basename -s .tiff $f);
  b=$(dirname $f);
  tiff2pdf -j -q 99 -x 300 -y 300 -f -o "$b/$a.pdf" $f;
done;

for f in DLData/*.tif; do
  a=$(basename -s .tif $f);
  b=$(dirname $f);
  convert "$b/$a.tif" -units PixelsPerInch image -density 300 -compress JPEG -quality 99 "$b/$a.pdf" $f;
done;
