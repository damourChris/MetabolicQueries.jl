"""
    download_bigg_model(model_id::AbstractString)

Download a BiGG model specified by its model ID.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model to download.

# Returns
- `response`: The parsed JSON data returned from the API request.

# Example
```julia
download_bigg_model("iND750")
```
"""
function download_bigg_model(model_id::AbstractString)
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/models/$model_id/download"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end



# Download models in other formats. These are not JSON responses, so the URLs look a little different.
# curl -O 'http://bigg.ucsd.edu/static/models/iMM904.xml.gz'
# curl -O 'http://bigg.ucsd.edu/static/models/iMM904.xml'
# curl -O 'http://bigg.ucsd.edu/static/models/iMM904.json'
# curl -O 'http://bigg.ucsd.edu/static/models/iMM904.mat'


"""
    download_bigg_model_file(model_id::AbstractString, file_type::AbstractString, file_path::AbstractString=".")

Download a BiGG model file specified by `model_id` and `file_type` from the BiGG database and save it to `file_path`.

# Arguments
- `model_id::AbstractString`: The ID of the BiGG model.
- `file_type::AbstractString`: The type of the file to download. Valid options are "xml.gz", "xml", "json", and "mat".
- `file_path::AbstractString="."`: The path where the downloaded file will be saved. Defaults to the current directory.

# Returns
- `file_path::AbstractString`: The path of the downloaded file.

# Examples
```julia
download_bigg_model_file("iND750", "xml.gz")
download_bigg_model_file("iND750", "xml")
download_bigg_model_file("iND750", "json")
download_bigg_model_file("iND750", "mat")
```
"""
function download_bigg_model_file(model_id::AbstractString, file_type::AbstractString, file_path::AbstractString=".")

    # Check if the file type is valid
    if file_type ∉ ["xml.gz", "xml", "json", "mat"]
        throw(ArgumentError("Invalid file type: $file_type"))
    end

    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/static/models/$model_id.$file_type"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}(); parse_json=false)

    # Save the response to a file
    open("$file_path/$model_id.$file_type", "w") do file
        write(file, response)
    end
    
    # Return the file path
    return "$file_path/$model_id.$file_type"
end

