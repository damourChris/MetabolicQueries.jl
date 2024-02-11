# BiGGQuery.jl
This is a Julia package for interacting with the BiGG database. It includes functionality for querying, downloading, and working with models from the BiGG database.

# Structure
The project is structured as follows:

- BiGGQuery.jl: The main module file. It includes other necessary files and sets up logging.
- downloads.jl: Downloading models from the BiGG database.
- models.jl: Working with models from the BiGG database.
- universal.jl: Contains functionality for working with the universal reactions and metabolites from the BiGG database.
- search.jl: Functionality for searching the BiGG database.
- utils.jl: Utility functions used across the module.

# Usage
To use this package, add it to you environment via 
```julia
]add BiGGQuery
```
You can then use it as any other pakcage via 
```julia
using BiGGQuery
```

All the functions are exposed in the global namespace.


# Testing
Tests for the module are located in the tests/ directory.

# Documentation
Documentation for the module is located in the docs/ directory.

# License
The project is licensed under the terms specified in the LICENSE file.

# Contributing
Contributions to the project are welcome. Please make sure to read the CONTRIBUTING.md file (if available) for guidelines on how to contribute to this project. 