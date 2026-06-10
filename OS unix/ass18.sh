#!/bin/bash

find / -type f -name "*.tmp" -atime +15 -exec rm -f {} \;

echo "Old .tmp files deleted."
