#!/bin/bash
lines=0
words=0

echo "Enter text (Press Ctrl+D when finished):"

while read line
do
       	lines=$((lines + 1))
 	words=$((words + $(echo "$line" | wc -w)))
done

echo "Number of lines: $lines"
echo "Number of words: $words"
