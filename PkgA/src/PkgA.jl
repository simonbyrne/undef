module PkgA

function __init__()
    global var
    if haskey(ENV, "varA")
        @show ENV["varA"]
        var = ENV["varA"]
    end
end

end # module PkgA
