module DynamicQuantities

export AbstractQuantity, AbstractDimensions
export Quantity, Dimensions, DimensionError, ustrip, dimension, valid
export ulength, umass, utime, ucurrent, utemperature, uluminosity, uamount
export uparse, @u_str, sym_uparse, @us_str, expand_units

include("fixed_rational.jl")
include("types.jl")
include("utils.jl")
include("math.jl")
include("units.jl")

import Requires: @init, @require
import .Units: uparse, @u_str, sym_uparse, @us_str, expand_units

if !isdefined(Base, :get_extension)
    @init @require Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d" include("../ext/DynamicQuantitiesUnitfulExt.jl")
end

end
