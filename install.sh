#!/bin/bash

PROJECT_DIRECTORY=$1

if [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ ! "$PROJECT_DIRECTORY" ]; then
    echo "Installs pre-commit hook link"
    echo "usage: install.sh [-h] --project-directory PROJECT_DIRECTORY"
    echo "-h, --help            show this help message and exit"
    echo "--project-directory PROJECT_DIRECTORY"
    echo "                    The location of your project. E.g., /path/to/air-test-auto/"
    exit 1
fi

ln -sf "$PROJECT_DIRECTORY/static_anlaysis/.pre-commit-config.yaml" "$PROJECT_DIRECTORY/.pre-commit-config.yaml"
