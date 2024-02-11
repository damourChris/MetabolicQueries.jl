# Test search_bigg_models function
function test_search_bigg_models()
    # Test case 1: Searching for metabolites
    query = "g3p"
    search_type = "metabolites"
    response = search_bigg_models(query, search_type)
    @test typeof(response) == Dict{String, Any}

    # Test case 2: Searching for genes
    query = "gapA"
    search_type = "genes"
    response = search_bigg_models(query, search_type)
    @test typeof(response) == Dict{String, Any}

    # Test case 3: Searching for models
    query = "iJO1366"
    search_type = "models"
    response = search_bigg_models(query, search_type)
    @test typeof(response) == Dict{String, Any}

    # Test case 4: Searching with invalid search type
    query = "g3p"
    search_type = "invalid_search_type"
    @test_throws ArgumentError search_bigg_models(query, search_type)
end

# Run tests
@testset "BiGGQuery Search Tests" begin
    @testset "search_bigg_models" begin
        test_search_bigg_models()
    end
end