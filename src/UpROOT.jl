module UpROOT

import PyCall
export getPyEle

struct TH1D
    Counts::Array
    Bins::Array
end

getPyEle(pydict, member::String) = PyCall.get(pydict, PyCall.PyObject, member)

function stackHis(TH1Ds::Dict{String, TH1D})
end


end # module
