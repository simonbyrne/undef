module PkgB

using PkgA

function __init__()
    if isdefined(PkgA, :var)
        @show PkgA.var
    end
end

end # module PkgB
