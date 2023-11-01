module PkgCore

using Statistics

__init__() = @info "Starting PkgCore"

"Compute a mean of `x` with another function name."
coremean(x) = mean(x)

end # module PkgCore
