# A random walk is a type of stochastic process where each value in the series is the sum of the previous value and some change. 
# The changes are random and most often normally distributed. 
# A random walk is typically non-stationary meaning that the statistical properties, such as the mean and variance, changes over time.

# I will use the random walk to deonstrate a non-stationary time series with a unit-root.

using plots, Random, Statistics, HypothesisTests

# Set the seed.
Random.seed!(1234)

# Number of samples
n = 500

# Generate a random walk with a unit root.
random_walk = zeros(n) # Initialise the series
for t in 2:n
    random_walk[t] = random_walk[t-1] + randn()
end

# Calculate mean and variance
mean_val = mean(random_walk)
var_val = var(random_walk)

println("Mean value: ", mean_val)
println("Variance: ", var_val)

# Plot the random walk.
plot(random_walk, title="Random Walk With Unit Root", xlabel="Time", ylabel="Value", legend=false, color=:blue)

#..............In progress. Dickey-Fuller on its way.