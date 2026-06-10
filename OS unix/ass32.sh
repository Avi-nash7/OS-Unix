#!/bin/bash

output_file="logged_users.txt"

who > "$output_file"

echo "List of logged-in users has been saved in $output_file"
