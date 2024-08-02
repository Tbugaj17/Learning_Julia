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

#.......in progress
