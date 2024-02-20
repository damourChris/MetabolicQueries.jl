# Bundling the API spec into one file

if [ $verbose -gt 1 ]; then
    printf "Bundling the %s API spec\n" "$API"
fi

docker run --rm -v "$PWD:/spec" redocly/cli bundle "$API" \
-o specs/"$API"/openapi-bundle.yaml

if [ $verbose -gt 1 ]; then
    printf "Finished bundling the %s API spec\n" "$API"
fi
