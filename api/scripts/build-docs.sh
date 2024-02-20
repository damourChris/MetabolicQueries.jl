# Building the API documentation

if [ $verbose -gt 1 ]; then
    printf "Building the documentation for the %s API\n" "$API"
fi

docker run --rm -v "$PWD:/spec" redocly/cli build-docs "$API" \
    -o specs/"$API"/docs.html

if [ $verbose -gt 1 ]; then
    printf "Finished building the documentation for the %s API\n" "$API"
fi
