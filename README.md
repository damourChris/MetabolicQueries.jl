# BiGGQuery.jl

<div align="center" style="display: flex; flex-direction: column; gap: 0.25rem">
    <div>
        <a href="https://damourchris.github.io/BiGGQuery.jl/">
            <img alt="Docs" src="https://img.shields.io/badge/docs-stable-green">
        </a>
        <a href="https://github.com/damourChris/BiGGQuery.jl/blob/main/LICENSE">
            <img alt="Github License" src="https://img.shields.io/github/license/damourChris/BiGGQuery.jl">
        </a>
        <a href="https://www.repostatus.org/#active"><img src="https://www.repostatus.org/badges/latest/active.svg" alt="Project Status: Active – The project has reached a stable, usable state and is being actively developed." /></a>
    </div>
</div>

This is a Julia package for interacting with the [BiGG database](http://bigg.ucsd.edu/). It includes functionality for querying, downloading, and working with models from the [BiGG database](http://bigg.ucsd.edu/)..

## Data Availability 

You can access the database directly on the website: [BiGG database](http://bigg.ucsd.edu/).


## Project Structure

The project is structured as follows:

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

Documentation for the package is available [here](https://damourChris.github.io/BiGGQuery.jl).

## License

This package is licensed under the [MIT License](https://github.com/damourChris/BiGGQuery.jl/blob/main/LICENSE).


---

Zachary A. King, Justin Lu, Andreas Dräger, Philip Miller, Stephen Federowicz, Joshua A. Lerman, Ali Ebrahim, Bernhard O. Palsson, Nathan E. Lewis **BiGG Models: A platform for integrating, standardizing and sharing genome-scale model**s, *Nucleic Acids Research*, Volume 44, Issue D1, 4 January 2016, Pages D515–D522, DOI: https://doi.org/10.1093/nar/gkv1049