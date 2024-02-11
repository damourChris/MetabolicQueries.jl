# Test get_bigg_models function
function test_get_bigg_models()
    response = get_bigg_models()
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_details function
function test_get_bigg_model_details()
    model_id = "iND750"
    response = get_bigg_model_details(model_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_reactions function
function test_get_bigg_model_reactions()
    model_id = "iND750"
    response = get_bigg_model_reactions(model_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_reaction_details function
function test_get_bigg_model_reaction_details()
    model_id = "iND750"
    reaction_id = "GAPD"
    response = get_bigg_model_reaction_details(model_id, reaction_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_metabolites function
function test_get_bigg_model_metabolites()
    model_id = "iND750"
    response = get_bigg_model_metabolites(model_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_metabolite_details function
function test_get_bigg_model_metabolite_details()
    model_id = "iND750"
    metabolite_id = "10fthf_c"
    response = get_bigg_model_metabolite_details(model_id, metabolite_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_genes function
function test_get_bigg_model_genes()
    model_id = "iMM904"
    response = get_bigg_model_genes(model_id)
    @test typeof(response) == Dict{String, Any}
end

# Test get_bigg_model_gene_details function
function test_get_bigg_model_gene_details()
    model_id = "iMM904"
    gene_id = "Q0045"
    response = get_bigg_model_gene_details(model_id, gene_id)
    @test typeof(response) == Dict{String, Any}
end

# Run tests
@testset "BiGGQuery Models Tests" begin
    @testset "get_bigg_models" begin
        test_get_bigg_models()
    end

    @testset "get_bigg_model_details" begin
        test_get_bigg_model_details()
    end

    @testset "get_bigg_model_reactions" begin
        test_get_bigg_model_reactions()
    end

    @testset "get_bigg_model_reaction_details" begin
        test_get_bigg_model_reaction_details()
    end

    @testset "get_bigg_model_metabolites" begin
        test_get_bigg_model_metabolites()
    end

    @testset "get_bigg_model_metabolite_details" begin
        test_get_bigg_model_metabolite_details()
    end

    @testset "get_bigg_model_genes" begin
        test_get_bigg_model_genes()
    end

    @testset "get_bigg_model_gene_details" begin
        test_get_bigg_model_gene_details()
    end
end