# Test api_request function
function test_api_request()
    # Test case 1: Successful API request
    method = :GET
    url = "http://bigg.ucsd.edu/api/v2/database_version"
    headers = Dict{String,String}()
    params = Dict{String,String}()
    response = api_request(method, url, headers, params)
    @test typeof(response) == Dict{String, Any}

end

# Test get_bigg_database_version function
function test_get_bigg_database_version()
    # Test case 1: Successful API request
    response = get_bigg_database_version()
    @test typeof(response) == Dict{String, Any}
end

# Run tests
@testset "BiGGQuery Utils Tests" begin
    @testset "api_request" begin
        test_api_request()
    end

    @testset "get_bigg_database_version" begin
        test_get_bigg_database_version()
    end
end