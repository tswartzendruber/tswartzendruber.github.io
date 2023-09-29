#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File Size: $SIZE"
    WORDCOUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Word Count: $WORDCOUNT"
  fi
done
