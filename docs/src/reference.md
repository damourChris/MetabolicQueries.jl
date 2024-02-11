
# API Reference

```@contents
Pages = ["reference.md"]
Depth = 2:3
```

## Downloads
---
```@autodocs
Modules = [BiGGQuery]
Filter = t -> t isa Function && findFuncPrefix(t) == "download"
```

## Getters
---
```@autodocs
Modules = [BiGGQuery]
Filter = t -> t isa Function && findFuncPrefix(t) == "get"
```

## Search 
---
```@autodocs
Modules = [BiGGQuery]
Filter = t -> t isa Function && findFuncPrefix(t) == "search"
```