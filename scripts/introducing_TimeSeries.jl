# Introduction to Time Series Analysis. Time series data consists of observations collected at specific time intervals. Analysis include: 
# Data Exploration: Understanding trends, seasonality, and anomalies.
# Preprocessing: Cleaning and transforming data.
# Modeling: Fitting statistical models to make forecasts or detect patterns.
# Packages can be found in 'Project.toml'. 
# Packages used in this script: TimeSeries.jl, 

# Introducing Time series Analysis. 

# Activate packages from Project.toml and import packages to the script with 'using'
using Pkg
Pkg.activate(".")  # Activates the environment based on the Project.toml in the current directory

using Random, Plots, Statistics

# White Noise example.
Random.seed!(1234)

# Generate 500 samples of Gaussian White Noise.
n = 500
white_noise = randn(n) 

# Calculate the mean and variance. 
# For Gaussian White Noise we expect mean close to zero and variance 1.  
mean_val = mean(white_noise)
var_val = var(white_noise)

# Print mean and variance.
println("Mean value:", mean_val)
println("Variance:", var_val)

# Plot the white Noise.
plot(white_noise, title="Gaussian White Noise", xlabel="Samples", ylabel="Value", legend=false, color=:blue )

# Time Series Example. 
using TimeSeries, Dates

# Create a timestamp range for the year 2024.
timestamp = Date("2024-01-01"):Day(1):Date("2024-12-31")

# Match the length of values with timestamp.
val = randn(length(timestamp))

# Create a dataframe 
df = TimeArray(timestamp, val)

# Plot the data.
plot(df, title="Generated Data for 2024", xlabel = "Date", ylabel = "Values", legend= false, color=:blue)

# Test for stationarity. 
using HypothesisTests

# Perform Augmented Dickey-Fuller Test to test for a unit root.
test_results = ADFTest(val , :none, 1)

# Plot ACF and PACF
using Random, StatsBase

# Compute ACF
acf_values = autocor(val, 40)  # Returns ACF values for lags up to 40

# Compute PACF
pacf_val = pacf(val, 60)  # Returns PACF values for lags up to 40

# Plot ACF
plot(acf_values, title="ACF", xlabel="Lag", ylabel="ACF", legend=false)

# Plot PACF
plot(pacf_values, title="PACF", xlabel="Lag", ylabel="PACF", legend=false)

# Compute ACF
acf_values = autocor(val, demean=true)

# Compute PACF
lags = 1:40
pacf_val = pacf(val, lags)

# Plot ACF and PACF.
acf_plot = plot(acf_values, seriestype=:bar, title="ACF")
pacf_plot = plot(pacf_val, seriestype=:bar, title="PACF")

#..............in progress
# Display the plots
#plot(acf_plot)

# Plot PACF
#plot(lags, pacf_val, title="PACF", xlabel="Lag", ylabel="PACF", legend=false)



# Fit an ARIMA model
#model = fit(ARIMA, df)

# Forecast 30 days ahead
#forecast = predict(model, 30)

# Plot the original time series and the forecast
#plot(df, label="Original Data", title="ARIMA Model Forecast", xlabel="Date", ylabel="Value")
#plot!(forecast, label="Forecast", color=:red)

