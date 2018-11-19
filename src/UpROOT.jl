__precompile__()
module UpROOT

export getPyEle

using PyCall, Gadfly
#This is to make sure python pointer don't break things
const uproot= PyNULL()
function __init__()
    copy!(uproot, pyimport("uproot"))
end

struct TFile
    path::String
    #= procname::String =#
    keys::Array
end

struct TH1D
    Counts::Array
    Bins::Array
end

getPyEle(pyDict, member::String) = PyCall.get(pyDict, PyCall.PyObject, member)

function readTFile(path::String)
    file = uproot[:open](path)
    keys = file[:allkeys]()
    println("List of keys: in $path")
    println(keys)
    return TFile(path, keys)
end

function getHist(x::TFile, histName::String)
    rfile = uproot[:open](x.path)
    hist = getPyEle(rfile, histName)
    return TH1D(hist[:numpy][1],hist[:numpy][2][1:end-1])
end

function plotHist(hist::TH1D, procname::String)
    Gadfly.plot(x=hist.Bins, y = hist.Counts, Geom.bar(position=:dodge),Guide.xlabel(procname))
end

function stackHis(TH1Ds::Dict{String, TH1D})
end

end # module
