# Introduction to Time Series Analysis. 
# Time series data consists of observations collected at specific time intervals. 
# Analysis include: 
# Data Exploration: Understanding trends, seasonality, and anomalies.
# Preprocessing: Cleaning and transforming data.
# Modeling: Fitting statistical models to make forecasts or detect patterns.
# All packages can be found in 'Project.toml'. 

# Activate packages from Project.toml and import to the script with 'using'.
using Pkg
Pkg.activate(".")  # Activates the environment based on the Project.toml in the current directory.

using TimeSeries, Dates, HypothesisTests, StatsBase, Plots

# Create a timestamp range for the year 2024.
timestamp = Date("2024-01-01"):Day(1):Date("2024-12-31")

# Generate random values to match the length of the timestamp.
val = randn(length(timestamp))

# Create a TimeArray.
df = TimeArray(timestamp, val)

# Plot the time series data.
plot(df, title="Generated Data for 2024", xlabel="Date", ylabel="Values", legend=false, color=:blue)

# Perform Augmented Dickey-Fuller Test to test for stationarity.
test_results = ADFTest(val, :none, 1)

lags = 0:99
# Compute ACF.
acf_values = autocor(val, lags ,demean=true)
println("ACF Values:")
println(acf_values)

# Compute PACF.
pacf_values = pacf(val, lags) # Specify the number of lags
println("PACF Values:")
println(pacf_values)

# Define confidence intervals.
n = length(val)
conf_interval = 1.96 / sqrt(n)

# Plot ACF with confidence intervals.
acf_plot = plot(lags, acf_values, seriestype=:bar, title="ACF", xlabel="Lags", ylabel="ACF Value")
hline!(acf_plot, [conf_interval, -conf_interval], linestyle=:dash, color=:red, label="95% CI")

# Plot PACF with confidence intervals.
pacf_plot = plot(lags, pacf_values, seriestype=:bar, title="PACF", xlabel="Lags", ylabel="PACF Value")
hline!(pacf_plot, [conf_interval, -conf_interval], linestyle=:dash, color=:red, label="95% CI")

# Display the plots.
display(acf_plot)
display(pacf_plot)

# Alternatively, you can save them to files.
savefig(acf_plot, "acf_plot.png")
savefig(pacf_plot, "pacf_plot.png")

#........in progress
