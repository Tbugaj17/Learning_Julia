# This script contains time series with trend and seasonality.

using Random, Plots

# Set seed.
Random.seed!(1234)

# Variables.
n = 500 # Samples.
time = 1:n # Time index [1:500]. 

# Generate time series with a trend.
trend = 0.05 * time # Generating a linear trend.
trend_series = trend + noise # Create time series adding a trend to random white noise.

"""
The series with trend is generated by adding a linear trend (0.05 * time) to white noise.
"""

# Plot the series.
plot(time, trend_series, title="Time Series with a Trend", xlabel= "Time", ylabel="Value", legend= false,color=:blue )

# Time Series with Seasonality.
period = 60 # Length of the season.
seasonal_component = sin.(2*pi*(time./period))
seasonal_series = seasonal_component + noise

"""
This series has a seasonal component generated using the sine function to create periodic fluctuations. 
The period length is set to 50.
"""

# Plot the series.
plot(time, seasonal_series, title="Time Series with Seasonality", xlabel="Time", ylabel="Value", legend=false, color=:green)

# Trend and Seasonality Combined.
combined_series = trend + seasonal_component + noise

"""
This series includes both a linear trend and seasonal fluctuations, plus some white noise.
"""
# Plot the series.
plot(time, combined_series, title="Combined Series", xlabel="Time", ylabel="Value", legend=false, color=:red)