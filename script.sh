#!/bin/sh

# instantiate with environment variable set
varA=1 julia --project=PkgB -e 'using Pkg; Pkg.instantiate()'
# run with environment variable set: it works correctly
varA=1 julia --project=PkgB -e 'using PkgB'
# run without environment variable, triggers an error
julia --project=PkgB -e 'using PkgB'
