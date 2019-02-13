#!/bin/bash

dir=DLData
for f in $dir/*.tiff; do
  a=$(basename -s .tiff $f);
  convert "$dir/$a.tiff" -units PixelsPerInch image -density 300 -compress JPEG -quality 95 "$dir/$a.pdf";
done;

dir=DLData
for f in $dir/*.tif; do
  a=$(basename -s .tif $f);
  convert "$dir/$a.tif" -units PixelsPerInch image -density 300 -compress JPEG -quality 95 "$dir/$a.pdf";
done;

