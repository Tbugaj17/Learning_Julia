# Introduction to Time Series Analysis. Time series data consists of observations collected at specific time intervals. Analysis include: 
# Data Exploration: Understanding trends, seasonality, and anomalies.
# Preprocessing: Cleaning and transforming data.
# Modeling: Fitting statistical models to make forecasts or detect patterns.
# Packages can be found in 'Project.toml'. 
# Packages used in this script: TimeSeries.jl, 

# Introducing Time series Analysis. 

# Create a simple Time Series.
# Import Packages with 'using'
using Pkg
Pkg.activate("TimeSeries_beginner.jl")  # Activates the environment based on the Project.toml in the current directory

using TimeSeries, DataFrames
