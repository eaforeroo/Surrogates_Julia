using TimeseriesSurrogates, Plots
using CSV
using DataFrames
df = CSV.read("C:\\coding\\dataelnino.csv", DataFrame)
arr = convert(Matrix{Float64}, df)
arr2 = vec(arr)
S1 = surrogate(arr2, IAAFT())
surroplot(arr2, S1)
savefig("surrogate_ElNino1.pdf")
