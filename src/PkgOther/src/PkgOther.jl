module PkgOther

using PkgCore

function __init__()
    @info "Starting PkgOther"
    @info "mean ... $(PkgCore.coremean([1, 2, 3]))"
    @info "std .... $(PkgCore.corestd([1, 2, 3]))"
end

"Other stuff function for doing nothing."
function otherstuff()
    @warn "This function is lazy and does nothing"
end

end # module PkgOther
