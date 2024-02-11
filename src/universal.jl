"""
    get_bigg_universal_reactions()

Retrieve the list of universal reactions.

# Returns
- `response`: Parsed JSON data containing the universal reactions.

# Example
```julia
get_bigg_universal_reactions()
```
"""
function get_bigg_universal_reactions()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/reactions"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

"""
    get_bigg_universal_reaction_details(reaction_id::AbstractString)

Retrieve details of a BiGG universal reaction using its ID.

# Arguments
- `reaction_id::AbstractString`: The ID of the reaction.

# Returns
- `response`: The parsed JSON data containing the reaction details.

# Example
```julia
get_bigg_universal_reaction_details("ADA")
```
"""
function get_bigg_universal_reaction_details(reaction_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/reactions/$reaction_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_universal_metabolites()

Retrieve the list of universal metabolites.

# Returns
- `response`: Parsed JSON data containing the list of universal metabolites.

# Example
```julia
get_bigg_universal_metabolites()
```
"""
function get_bigg_universal_metabolites()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/metabolites"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_universal_metabolite_details(metabolite_id::AbstractString)

Retrieve details of a universal metabolite.

# Arguments
- `metabolite_id::AbstractString`: The ID of the metabolite to retrieve details for.

# Returns
- `response`: Parsed JSON data containing the details of the metabolite.

# Example
```julia
get_bigg_universal_metabolite_details("adn")
```
"""
function get_bigg_universal_metabolite_details(metabolite_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/metabolites/$metabolite_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

