#White Noise Example with Moving Average. 
#Time Series.

using Random, Plots, Statistics

# Setting the seed.
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


# Define function moving_avarage to smoothe the white noise. 
function moving_avarage(data, window_size)
    return[mean(data[i:i+window_size-1]) for i in 1:length(data)-window_size+1]
end

"""
The moving average filter calculates an avarage of the data within a sliding window (subset of data points).

- mean(data[i:i+window_size-1]) # calculates the mean of a subset of data points from current position i to i + window_size-1.

- for i in 1:length(data)-window_size+1 # for loop to iterate from the start of data points to where a full window can be taken.
"""
# Apply moving average.
window_size = 8 # Can be adjustet.
smoothed_noise = moving_avarage(white_noise, window_size)

# Plot the white Noise.
plot(white_noise, title="Gaussian White Noise", xlabel="Samples", ylabel="Value", legend=false, color=:blue )

# Add the smoothed noise to the plot.
plot!(smoothed_noise, color=:red, linewidth=2, label="Smoothed Noise")

# Display the plot.
display(plot)



