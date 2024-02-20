# Generate the client for each API

if [ $verbose -gt 1 ]; then
    printf "Generating the client for the %s API\n" "$API"
fi

docker run --rm -v "$PWD:/local" \
    openapitools/openapi-generator-cli generate \
    -i local/specs/"$API"/openapi-bundle.yaml \
    -g julia-client             \
    -o /local/src/client/"$API"-julia  \
    --additional-properties="packageName="$API"Client,exportModels=true,exportOperations=true" 

if [ $verbose -gt 1 ]; then
    printf "Finished generating the client for the %s API\n" "$API"
    printf "Generating the server for the %s API\n" "$API"
fi


docker run --rm -v "$PWD:/local" \
    openapitools/openapi-generator-cli generate -i local/specs/"$API"/openapi-bundle.yaml \
    -g julia-server             \
    -o /local/src/server/"$API"-julia  \
    --additional-properties="packageName="$API"Server,exportModels=true,exportOperations=true" 

if [ $verbose -gt 1 ]; then
    printf "Finished generating the server for the %s API\n" "$API"
fi