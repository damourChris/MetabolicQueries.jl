using BiGGQuery, Test

@testset "BiGGQuery Search Tests" begin
    include("./test_search.jl")
    include("./test_universal.jl")
    # include("./test_downloads.jl")
    include("./test_models.jl")
    include("./test_utils.jl")
end