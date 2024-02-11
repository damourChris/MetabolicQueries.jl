


"""
    search_bigg_models(query::AbstractString, search_type::AbstractString)

Searches for BiGG models based on the given query and search type.

# Arguments
- `query::AbstractString`: The search query.
- `search_type::AbstractString`: The type of search to perform. Valid options are "metabolites", "genes", and "models".

# Returns
- `response`: The parsed JSON data returned by the API request.

# Examples
```julia
search_bigg_models("g3p", "metabolites")
search_bigg_models("gapA", "genes")
search_bigg_models("iJO1366", "models")
```
"""
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