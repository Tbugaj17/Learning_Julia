#White Noise Example. 
#Time Series.

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





