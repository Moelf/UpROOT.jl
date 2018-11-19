# UpROOT.jl
A julia wrapper for [Uproot](https://github.com/scikit-hep/uproot) and plotting function with four-top / same-sign analysis in mind [FTAnalysis](https://github.com/cmstas/FTAnalysis)

| **Build Status**                                                                                |
|:-----------------------------------------------------------------------------------------------:|
|[![Build Status](https://travis-ci.org/Moelf/UpROOT.jl.svg?branch=master)](https://travis-ci.org/Moelf/UpROOT.jl)|

## Installation

* Before start, make sure you have [Uproot](https://github.com/scikit-hep/uproot) installed through `pip` or `anaconda`. *

The package is not registered in `METADATA.jl` yet so you will need to do this manually (it's still a one liner)
```julia
Pkg> add https://travis-ci.org/Moelf/UpROOT.jl
```

## Basic Usage
```julia
using UpROOT
```

## To-Do
- [] Stack Histogram Plot
- [] Events loop
