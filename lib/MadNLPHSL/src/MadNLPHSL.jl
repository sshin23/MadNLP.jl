module MadNLPHSL

import MadNLP: @kwdef, Logger, @debug, @warn, @error, 
    AbstractOptions, AbstractLinearSolver, set_options!, SparseMatrixCSC, SubVector, StrideOneVector,
    SymbolicException,FactorizationException,SolveException,InertiaException,
    introduce, factorize!, solve!, improve!, is_inertia, inertia, findIJ, nnz,
    get_tril_to_full, transform!

include(joinpath("..","deps","deps.jl"))

include("mc68.jl")
include("ma27.jl")
include("ma57.jl")
include("ma77.jl")
include("ma86.jl")
include("ma97.jl")

function __init__()
    check_deps()
    # try
    #     @isdefined(libhsl) && dlopen(libhsl,RTLD_DEEPBIND)
    # catch e
    #     println("HSL shared library cannot be loaded")
    # end
end

end # module