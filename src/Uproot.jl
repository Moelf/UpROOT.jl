using PyCall

module UpROOT

getPyEle(pydict, member::String) = get(pydict, PyObject, member)

struct TH1D
    Bins::Array
    Counts::Array
end

end # module
