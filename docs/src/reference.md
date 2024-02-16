
# API Reference

```@contents
Pages = ["reference.md"]
Depth = 2:3
```

## Downloads
---
```@autodocs
Modules = [MetabolicQueries]
Filter = t -> t isa Function && findFuncPrefix(t) == "download"
```

## Getters
---
```@autodocs
Modules = [MetabolicQueries]
Filter = t -> t isa Function && findFuncPrefix(t) == "get"
```

## Search 
---
```@autodocs
Modules = [MetabolicQueries]
Filter = t -> t isa Function && findFuncPrefix(t) == "search"
```