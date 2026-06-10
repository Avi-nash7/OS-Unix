#!/bin/bash

echo "Parent process ID: $$"

(
    echo "Child process started with PID: $$"
    echo "Child process PPID (before parent exit): $PPID"

    sleep 10

    echo "Child process PPID (after parent exit): $PPID"
    echo "Child is now orphan (adopted by init/systemd)"
) &

# Parent exits immediately
exit 0
