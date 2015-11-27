#!/bin/sh

#Program that converts jpg files to png

IMAGES=*.jpg
shopt -s nullglob
for name_jpg in $IMAGES; do
    name_png=`echo $name_jpg | sed s/'\.jpg'/'\.png'/`
    if [ -f "$name_png" ]; then
	echo $name_png already exists
	exit 1
    fi
    convert "$name_jpg" "$name_png"
    rm "$name_jpg"
done
exit 0
