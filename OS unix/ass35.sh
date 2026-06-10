#!/bin/bash

echo "Enter a sentence:"
read sentence

# Count spaces (blanks)
count=$(echo "$sentence" | tr -cd " " | wc -c)

echo "Number of blanks in the sentence = $count"
