#!/bin/sh

#Program that emails images taken from stdin

images=$@
for image in $images; do
    display "$image"
    echo -n "Address to e-mail this image to? "
    read email
    echo -n "Subject Line? "
    read subject
    echo -n "Message to accompany image? "
    read message
    echo "$message" | mutt -s "$subject" -a "$image" -- "$email"
done
