# Test get_bigg_universal_reactions function
function test_get_bigg_universal_reactions()
    response = get_bigg_universal_reactions()
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_universal_reaction_details function
function test_get_bigg_universal_reaction_details()
    reaction_id = "ADA"
    response = get_bigg_universal_reaction_details(reaction_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_universal_metabolites function
function test_get_bigg_universal_metabolites()
    response = get_bigg_universal_metabolites()
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_universal_metabolite_details function
function test_get_bigg_universal_metabolite_details()
    metabolite_id = "adn"
    response = get_bigg_universal_metabolite_details(metabolite_id)
    @test typeof(response) == Dict{String, Any}
end

# Run tests
@testset "BiGGQuery Universal Tests" begin
    @testset "get_bigg_universal_reactions" begin
        test_get_bigg_universal_reactions()
    end

    @testset "get_bigg_universal_reaction_details" begin
        test_get_bigg_universal_reaction_details()
    end

    @testset "get_bigg_universal_metabolites" begin
        test_get_bigg_universal_metabolites()
    end

    @testset "get_bigg_universal_metabolite_details" begin
        test_get_bigg_universal_metabolite_details()
    end
end