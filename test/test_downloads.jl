# Test download_bigg_model function
function test_download_bigg_model()
    # Test case 1: Downloading a valid model
    model_id = "iND750"
    response = download_bigg_model(model_id)
    @test typeof(response) == Dict{String, Any}

    # Test case 2: Downloading a non-existent model
    model_id = "nonexistent_model"
    response = download_bigg_model(model_id)
    @test response == nothing
end

# Test download_bigg_model_file function
function test_download_bigg_model_file()
    # Test case 1: Downloading a valid model file
    model_id = "iND750"
    file_type = "xml.gz"
    file_path = "."
    downloaded_file = download_bigg_model_file(model_id, file_type, file_path)
    @test typeof(downloaded_file) == String
    @test isfile(downloaded_file)

    # Test case 2: Downloading a model file with invalid file type
    model_id = "iND750"
    file_type = "txt"
    file_path = "."
    @test_throws ArgumentError download_bigg_model_file(model_id, file_type, file_path)
end

# Run tests
@testset "BiGGQuery Downloads Tests" begin
    @testset "download_bigg_model" begin
        test_download_bigg_model()
    end

    @testset "download_bigg_model_file" begin
        test_download_bigg_model_file()
    end
end