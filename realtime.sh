#!/bin/bash
while true;do
find . -name "*.tex" |xargs inotifywait -e modify
#  inotifywait -e modify -r .
#  sleep 5
  xelatex template-master-utf8.tex
  echo 1
done
