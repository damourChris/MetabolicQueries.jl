module BiGGQuery

using HTTP
using JSON
using Retry
using URIParser
using Logging


# Configure logging
logger = SimpleLogger(stdout, Logging.Info)
global_logger(logger)



end
