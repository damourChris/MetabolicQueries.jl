# Metabolic Models

The BiGG Models database has over a 100 metabolic models for different species.

## Fields
Associated to each models is a set of:
- Metabolites
- Reactions
- Genes

## Format
Each model is available in 3 file types:

- SBML
- JSON
- MAT

!!! info "Integration COBREXA.jl"
    These three format can be parsed with COBREXA.jl:
     


## Details 
By running [`get_bigg_model_metabolites`](@ref) on a model ID, the following fields will be returned. 
- model_bigg_id
- organism
- genome_name
- genome_ref_string
- gene_count
- metabolite_count
- reaction_count
- reference_type
- reference_id
- published_filename
- xml_gz_size
- mat_gz_size
- mat_size
- xml_size
- json_size
- escher_maps
- last_updated
