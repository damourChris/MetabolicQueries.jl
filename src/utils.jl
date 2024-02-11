
"""
    api_request(method::Symbol, url::AbstractString, headers::Dict{String,String}, params::Dict{String,String}; parse_json::Bool=true)

Performs an API request using the specified HTTP method, URL, headers, and parameters.

## Arguments
- `method::Symbol`: The HTTP method to use for the request (e.g., `:GET`, `:POST`).
- `url::AbstractString`: The URL to send the request to.
- `headers::Dict{String,String}`: A dictionary of headers to include in the request.
- `params::Dict{String,String}`: A dictionary of parameters to include in the request.
- `parse_json::Bool=true`: Whether to parse the response body as JSON. Default is `true`.

## Returns
- If `parse_json` is `true`, returns the parsed JSON response data.
- If `parse_json` is `false`, returns the response body as a string.

## Example
```julia
api_request(:GET, "http://bigg.ucsd.edu/api/v2/database_version", Dict{String,String}(), Dict{String,String}())
```
"""
function api_request(method::Symbol, url::AbstractString, headers::Dict{String,String}, params::Dict{String,String}; parse_json::Bool=true)
    # Create a URI object for the request
    uri = URI(url)

    # Convert the parameters dictionary into a query string
    query_string = join([k * "=" * v for (k, v) in params], "&")

    # Combine the base URL with the query string
    full_url = "$url?$query_string"

    # Perform the API request 
    response = safe_request(method, full_url, headers)

    # Log the request details
    @info "API Request: $method $full_url"

    # Check if the request was successful
    if response.status != 200
        @error "Request Failed: $(response.status) - $(String(response.body))"
        throw(ErrorException("Request Failed: $(response.status)"))
    end

    # Check if the response should be parsed as JSON
    if parse_json
        # Parse the JSON response body
        json_response = JSON.parse(String(response.body))

        # Return the parsed JSON data
        return json_response

    else
        # Return the response body
        return response.body
    end
end


# Import the necessary libraries
using HTTP
using Base

# Define a function to perform the API request with error handling and timeouts
"""
    safe_request(method, full_url, headers)

Safely sends an HTTP request and handles common errors.

# Arguments
- `method`: The HTTP method to use for the request.
- `full_url`: The full URL to send the request to.
- `headers`: A dictionary of headers to include in the request.

# Returns
- If the request is successful, returns the response object.
- If an error occurs during the request, prints an error message and returns `nothing`.
"""
function safe_request(method, full_url, headers)
    response = try
        # Set a timeout for the request
        HTTP.request(method, full_url, headers=headers, connect_timeout =10)
    catch e
        if isa(e, HTTP.IOError)
            println("IOError occurred during the request.")
        elseif isa(e, HTTP.StatusError)
            println("StatusError occurred during the request.")
        else
            println("An unexpected error occurred during the request.")
        end
        return nothing
    end

    # Check the status code of the response
    if HTTP.status(response) != 200
        println("The request was not successful. Status code: ", HTTP.status(response))
        return nothing
    end

    return response
end

"""
    get_bigg_database_version()

Get the version of the current BiGG database.

# Returns
- `response`: Parsed JSON data containing the database version.

# Examples
```julia
get_bigg_database_version()
```
"""
function get_bigg_database_version()
    # Define the URL for the API request
    url = "http://bigg.ucsd.edu/api/v2/database_version"

    # Perform the API request
    response = api_request(:GET, url, Dict{String,String}(), Dict{String,String}())

    # Return the parsed JSON data
    return response
end