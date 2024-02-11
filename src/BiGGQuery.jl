module BiGGQuery

using HTTP
using JSON
using Retry
using URIParser
using Logging

include("utils.jl")
include("search.jl")
include("universal.jl")
include("models.jl")
include("downloads.jl")

# Configure logging
logger = SimpleLogger(stdout, Logging.Info)
global_logger(logger)



end
