module WaveOpticsPropagation

using EllipsisNotation
using FFTW
using ChainRulesCore
using Zygote
using NDTools
using FourierTools
using IndexFunArrays
using CUDA


struct Params{M, M2}
    y::M
    x::M
    yp::M
    xp::M
    L::M2
    Lp::M2
end

include("utils.jl")
include("propagation.jl")
include("angular_spectrum.jl")
include("shifted_angular_spectrum.jl")
include("scalable_angular_spectrum.jl")
include("fraunhofer.jl")
include("beams.jl")
include("conv.jl")
include("shifted_SAS.jl")



end
