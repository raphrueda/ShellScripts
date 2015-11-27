#!/bin/sh

#Program that adds a timestamp to images

shopt -s nullglob
for image in $@; do
    date=`ls -l "$image" | awk '{print $6" "$7" "$8}'`
    cp -p "$image" temp
    convert -gravity south -pointsize 36 -annotate 0 "$date" temp temp
    touch -r "$image" temp
    cp -p temp "$image"
    display "$image"
done
