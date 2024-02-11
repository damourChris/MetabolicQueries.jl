
"""
    get_bigg_models()

Get the list of models available in the BiGG database.

# Example
```julia
get_bigg_models()
```
"""
function get_bigg_models()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_details(model_id::AbstractString)

Get details of a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.

# Returns
- `response`: The parsed JSON data returned by the API request.

# Example
```julia
get_bigg_model_details("iND750")
```
"""
function get_bigg_model_details(model_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_reactions(model_id::AbstractString)

Retrieve the reactions of a BiGG model specified by `model_id`.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.

# Returns
- `response`: The parsed JSON data containing the reactions of the specified BiGG model.

# Example
```julia
get_bigg_model_reactions("iND750")
```
"""
function get_bigg_model_reactions(model_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/reactions"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end

"""
    get_bigg_model_reaction_details(model_id::AbstractString, reaction_id::AbstractString)

Retrieve details of a specific reaction in a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.
- `reaction_id::AbstractString`: The ID of the reaction.

# Returns
- `response`: The parsed JSON data containing the details of the reaction.

# Example
```julia
get_bigg_model_reaction_details("iND750", "GAPD")
```
"""
function get_bigg_model_reaction_details(model_id::AbstractString, reaction_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/reactions/$reaction_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_metabolites(model_id::AbstractString)

Retrieve the metabolites of a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.

# Returns
- `response`: The parsed JSON data containing the metabolites.

# Example
```julia
get_bigg_model_metabolites("iND750")
```
"""
function get_bigg_model_metabolites(model_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/metabolites"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_metabolite_details(model_id::AbstractString, metabolite_id::AbstractString)

Retrieve the details of a specific metabolite in a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.
- `metabolite_id::AbstractString`: The ID of the metabolite.

# Returns
- `response`: Parsed JSON data containing the details of the metabolite.

# Example
```julia
get_bigg_model_metabolite_details("iND750", "10fthf_c")
```
"""
function get_bigg_model_metabolite_details(model_id::AbstractString, metabolite_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/metabolites/$metabolite_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_genes(model_id::AbstractString)

Retrieve the genes associated with a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.

# Returns
- `response`: The parsed JSON data containing the genes associated with the model.

# Example
```julia
get_bigg_model_genes("iMM904")
```
"""
function get_bigg_model_genes(model_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/genes"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end


"""
    get_bigg_model_gene_details(model_id::AbstractString, gene_id::AbstractString)

Retrieve the details of a specific gene in a BiGG model.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.
- `gene_id::AbstractString`: The ID of the gene.

# Returns
- `response`: The parsed JSON data containing the details of the gene.

# Example
```julia
get_bigg_model_gene_details("iMM904", "Q0045")
```
"""
function get_bigg_model_gene_details(model_id::AbstractString, gene_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/genes/$gene_id"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end
