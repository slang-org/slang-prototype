#!/bin/sh

########################################################################
# Automated code formatting                                            #
########################################################################
black -t py38 src/;
black -t py38 tests/;

for modified_file in $(git diff --name-only --cached); do
    git add "${modified_file}";
done

########################################################################
# Tests                                                                #
########################################################################
PYTHONPATH="${PWD}/src/:${PYTHONPATH}" pytest --mypy;
