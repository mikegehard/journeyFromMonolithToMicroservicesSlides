#!/bin/bash

if [ "$1" = "" ]
then
  echo "Usage: $0 <path to slides directory>"
  exit
fi

if [ ! -d "$1" ]; then
  echo "Specified slides directory does not exist: $1"
  echo "Usage: $0 <path to slides directory>"
  exit
fi

echo "Preparing to present" $1

docker run --name=reveal --rm -it -p 8000:8000 -v $1:/home/reveal/reveal.js/slides pivotalenablement/revealjs 
