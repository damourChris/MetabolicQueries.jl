module MetabolicQueries

# Import submodules
using .MetabolicAtlas
using .BiGG
using .KEGG

function __init__():
    
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