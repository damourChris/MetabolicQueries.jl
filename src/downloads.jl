"""
    download_bigg_model(model_id::AbstractString; file_path::AbstractString=".", file_type::AbstractString="xml")

Download a BiGG model file specified by `model_id` from the BiGG database and save it to `file_path`.

## Arguments
- `model_id::AbstractString`: The ID of the BiGG model to download.
- `file_path::AbstractString`: The path where the downloaded file will be saved. Default is the current directory.
- `file_type::AbstractString`: The file type of the downloaded file. Valid options are "xml.gz", "xml", "json", and "mat". Default is "xml".

## Returns
- `file_path::AbstractString`: The path of the downloaded file.

## Example
```julia
download_bigg_model("iND750", "xml")
download_bigg_model("iND750", "xml.gz")
download_bigg_model("iND750", "json")
download_bigg_model("iND750", "mat")
```
"""
function download_bigg_model(model_id::AbstractString; file_path::AbstractString=".", file_type::AbstractString="xml")

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

