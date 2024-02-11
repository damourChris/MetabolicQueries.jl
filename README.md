# BiGGQuery.jl

<div align="center" style="display: flex; flex-direction: column; gap: 0.25rem">
    <div>
        <a href="https://damourchris.github.io/BiGGQuery.jl/">
            <img alt="Docs" src="https://img.shields.io/badge/docs-stable-green">
        </a>
        <a href="https://github.com/damourChris/BiGGQuery.jl/blob/main/LICENSE">
            <img alt="Github License" src="https://img.shields.io/github/license/damourChris/BiGGQuery.jl">
        </a>
    </div>
</div>

This is a Julia package for interacting with the [BiGG database](http://bigg.ucsd.edu/). It includes functionality for querying, downloading, and working with models from the [BiGG database](http://bigg.ucsd.edu/)..

## Data Availability 

You can access the database directly on the website: [[BiGG database](http://bigg.ucsd.edu/)](http://bigg.ucsd.edu/).


## Structure

The project is structured as follows:

- BiGGQuery.jl: The main module file. It includes other necessary files and sets up logging.
- downloads.jl: Downloading models from the BiGG database.
- models.jl: Working with models from the BiGG database.
- universal.jl: Contains functionality for working with the universal reactions and metabolites from the BiGG database.
- search.jl: Functionality for searching the BiGG database.
- utils.jl: Utility functions used across the module.

## Installation

To use this package, add it to you environment via the REPL

```julia
]add BiGGQuery
```

or

```julia
using Pkg
Pkg.add("BiGGQuery")
```

You can then use it as any other package via

```julia
using BiGGQuery
```

All the functions are exposed in the global namespace.

## Documentation

Documentation for the module is available [here](https://damourChris.github.io/BiGGQuery.jl).

## License

The project is licensed under the terms specified in the LICENSE file.

## Contributing

Contributions to the project are welcome. Please make sure to read the CONTRIBUTING.md file for guidelines on how to contribute to this project.
