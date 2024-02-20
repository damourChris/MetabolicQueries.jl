#!/bin/bash
# This script is responsible for generating each part of each API
#
# Steps:
# 1. Bundle the API spec into one file
# 2. Generate the server for the API
# 3. Generate the client for the API
# 4. Build the API documentation


# Default values
verbose=0
apis=("bigg")
steps="all"
client="default"

# Parse command-line arguments
while getopts "a:v:s:c:" opt; do
    case ${opt} in
        a)
            apis=($OPTARG)
        ;;
        v)
            verbose=$OPTARG
        ;;
        s)
            steps=$OPTARG
        ;;
        c)
            client=$OPTARG
        ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
        ;;
    esac
done

# Convert steps to an array
IFS=',' read -ra STEPS <<< "$steps"

# For each API
for api in "${apis[@]}"; do
    API=$api

    for step in "${STEPS[@]}"; do
        if [[ $step == "all" || $step == "bundle" ]]; then
            # Bundle the API spec
            source ./scripts/bundle.sh
        fi

        if [[ $step == "all" || $step == "generate" ]]; then
            # Generate the client and server code
            source ./scripts/generate-code.sh
        fi

        if [[ $step == "all" || $step == "build" ]]; then
            # Build the documentation
            source ./scripts/build-docs.sh
        fi
    done
done