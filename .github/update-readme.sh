#!/bin/bash

echo "Today I Learned"
echo -e "=====\n"

echo -n "A collection of small tips and tricks that I pick up each day I work in tech."

for directory in */ ; do
    echo -e "\n\n### ${directory%/}\n\n"
    for file in $directory* ; do
        read title < $file
        echo -e "- [$title]($file)"
    done
done
