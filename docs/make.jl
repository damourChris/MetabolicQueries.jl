CI = get(ENV, "CI", nothing) == "true" || get(ENV, "GITHUB_TOKEN", nothing) !== nothing

using Documenter

using BiGGQuery


include("./docs_utils.jl")

@info "Building Documentation"
makedocs(;
    sitename="BiGGQuery.jl",
    # This argument is only so that the sequence of pages in the sidebar is configured
    # By default all markdown files in `docs/src` are expanded and included.
    pages=[
        "index.md",
        "reference.md"
    ],
    # Don't worry about what `CI` does in this line.
    format=Documenter.HTML(prettyurls=CI),
)

@info "Deploying Documentation"
if CI
    deploydocs(
        repo="github.com/damourChris/BiGGQuery.jl.git",
        target="build",
        push_preview=true,
        devbranch="main",
    )
end

@info "Finished with Documentation"
