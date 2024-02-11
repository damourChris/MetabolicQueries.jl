function findFuncPrefix(func::Function; sep::String="_")
    split(string(func), sep)[1]
end