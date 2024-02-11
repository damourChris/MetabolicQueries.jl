module BiGGQuery

using HTTP
using JSON
using Retry
using URIParser
using Logging

include("utils.jl")
export api_request, get_bigg_database_version

include("universal.jl")
export get_bigg_universal_metabolite_details, get_bigg_universal_metabolites, 
        get_bigg_universal_reaction_details, get_bigg_universal_reactions

include("models.jl")
export get_bigg_model_details, get_bigg_model_genes, get_bigg_model_metabolite_details, 
        get_bigg_model_metabolites, get_bigg_model_reaction_details, get_bigg_model_reactions, 
        get_bigg_models, get_bigg_model_gene_details

include("downloads.jl")
export download_bigg_model, download_bigg_model_file

include("search.jl")
export search_bigg_models


# Configure logging
logger = SimpleLogger(stdout, Logging.Info)
global_logger(logger)



end
