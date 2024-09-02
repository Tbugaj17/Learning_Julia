# IN PROGRESS!!
using Pkg
using Forecast, Plots, CSV, DataFrames

# Generate the timestamp range
timestamp = Date("2024-01-01"):Day(1):Date("2024-12-31")

# Generate random values (for example, this could represent daily returns)
val = cumsum(randn(length(timestamp)))

# Convert to a time series object
data = val

