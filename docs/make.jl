CI = get(ENV, "CI", nothing) == "true" || get(ENV, "GITHUB_TOKEN", nothing) !== nothing

using MetabolicQueries, Documenter

# Include the docs utils
include("./docs_utils.jl")


@info "Building Documentation"

makedocs(;
    sitename="MetabolicQueries.jl",    
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "Available Databases" => "databases.md",
        "Reference" => "reference.md"
    ],
    format=Documenter.HTML(prettyurls=CI),
)

@info "Finished with Documentation"
