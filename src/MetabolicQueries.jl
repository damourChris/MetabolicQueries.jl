module MetabolicQueries

# Import submodules
include("./metabolicatlas/MetabolicAtlas.jl")
using .MetabolicAtlas

include("./bigg/BiGG.jl")
using .BiGG

include("./kegg/KEGG.jl")
using .KEGG

function __init__()
    
    # Setup the caching
    # setup_caching()
    
    # Initiliaze the API Clients

    # Initialize the BiGG module
    BiGG.__init__()
    
    # Initialize the KEGG module
    KEGG.__init__()
    
    # Initialize the MetabolicAtlas module
    MetabolicAtlas.__init__()


end

end