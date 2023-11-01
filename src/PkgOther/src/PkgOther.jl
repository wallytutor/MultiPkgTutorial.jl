module PkgOther

using PkgCore

function __init__()
    @info "Starting PkgOther"
    @info "mean ... $(PkgCore.coremean([1, 2, 3]))"
    @info "std .... $(PkgCore.corestd([1, 2, 3]))"
end

end # module PkgOther
