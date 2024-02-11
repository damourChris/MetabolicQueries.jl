
# Search for models
# curl 'http://bigg.ucsd.edu/api/v2/search?query=g3p&search_type=metabolites'
# curl 'http://bigg.ucsd.edu/api/v2/search?query=gapA&search_type=genes'
# curl 'http://bigg.ucsd.edu/api/v2/search?query=iJO1366&search_type=models'

function search_bigg_models(query::AbstractString, search_type::AbstractString)

    # Check if the search type is valid
    if search_type ∉ ["metabolites", "genes", "models"]
        throw(ArgumentError("Invalid search type: $search_type"))
    end

    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/search"

    # Define the parameters for the API request
    params = Dict("query" => query, "search_type" => search_type)

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), params)

    # Return the parsed JSON data
    return response
end

search_bigg_models("g3p", "metabolites")
search_bigg_models("gapA", "genes")
search_bigg_models("iJO1366", "models")