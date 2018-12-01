#!/bin/bash

mkdir -p "$1/backup"


for i in `ls $1/ | grep -E "jpg|JPG|png|PNG" `
do
  cp "$1/$i" "$1/backup/"
  convert -resize 1240x1240\> "$1/$i" "$1/$i"
done

convert -resize 640x640\> "$1/cover.jpg" "$1/cover.jpg"
