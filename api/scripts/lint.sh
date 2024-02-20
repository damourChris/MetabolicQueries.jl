
if [ $verbose -gt 1 ]; then
    printf "Linting the %s API spec\n" "$API"
fi

docker run --rm -v "$PWD:/spec" redocly/cli lint $API 