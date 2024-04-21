#!/bin/sh

for fp in img/*; do
  f="${fp##*/}"
  out="thumb/${f%.*}.jpg"

  if [ -e "$out" ]; then
    continue
  fi

  echo "writting $fp -> $out"

  gm convert -size 320x "$fp" \
    -thumbnail '320x240^' \
    -gravity center \
    -extent 320x240 \
    +profile "*" \
    "$out"
done
