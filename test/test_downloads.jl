# Test download_bigg_model function
function test_download_bigg_model()
    # Test case 1: Downloading a valid model
    model_id = "iND750"
    response = download_bigg_model(model_id)
    @test typeof(response) == Dict{String, Any}
end

# Test download_bigg_model_file function
function test_download_bigg_model_file()
    # Test case 1: Downloading a valid model file
    model_id = "iND750"
    file_type = "xml"
    file_path = "."
    downloaded_file = download_bigg_model_file(model_id, file_type, file_path)
    @test downloaded_file[findlast(==('.'), downloaded_file)+1:end] == file_type
    @test typeof(downloaded_file) == String
    @test isfile(downloaded_file)
    rm(downloaded_file)


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