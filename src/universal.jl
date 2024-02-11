

# Get a list of universal reactions
# curl 'http://bigg.ucsd.edu/api/v2/universal/reactions'

function get_bigg_universal_reactions()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/reactions"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

get_bigg_universal_reactions()

# Get universal reaction details
# curl 'http://bigg.ucsd.edu/api/v2/universal/reactions/ADA'

function get_bigg_universal_reaction_details(reaction_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/reactions/$reaction_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

get_bigg_universal_reaction_details("ADA")

# Get a list of universal metabolites
# curl 'http://bigg.ucsd.edu/api/v2/universal/metabolites'

function get_bigg_universal_metabolites()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/metabolites"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

get_bigg_universal_metabolites()

# Get universal metabolite details
# curl 'http://bigg.ucsd.edu/api/v2/universal/metabolites/g3p'

function get_bigg_universal_metabolite_details(metabolite_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/universal/metabolites/$metabolite_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String, String}(), Dict{String, String}())

    # Return the parsed JSON data
    return response
end

get_bigg_universal_metabolite_details("g3p")
get_bigg_universal_metabolite_details("g3p124")
