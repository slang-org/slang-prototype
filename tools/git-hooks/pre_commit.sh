#!/bin/sh

# Code formatter
if ! black -t py38 --check src/; then
    printf "\nRun 'black -t py38 src/' to fix the problem and add back the modified files to your commit.\n\n";
    exit 1;
fi
