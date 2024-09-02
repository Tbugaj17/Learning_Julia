# Forcasting with ARIMA

using Pkg
Pkg.add(["ARIMA", "CSV", "DataFrames", "TimeSeries", "Plots", "StatsBase"])

using TimeSeries, Dates, Plots, ARIMA, StatsBase

# Generate the timestamp range
timestamp = Date("2024-01-01"):Day(1):Date("2024-12-31")

# Generate random values (for example, this could represent daily returns)
val = cumsum(randn(length(timestamp)))

# Create a TimeArray
df = TimeArray(timestamp, val)

# Plot the time series data
plot(df, title="Generated Data for 2024", xlabel="Date", ylabel="Values", legend=false, color=:blue)

# Difference the data to make it stationary (ARIMA requires stationary data)
diff_val = diff(val)

# Fit the ARIMA model
model = fit(ARIMA, diff_val, 1, 1, 1)  # ARIMA(1, 1, 1) as an example

# Number of steps to forecast
n_forecast = 30  # Forecasting for 30 days

# Forecast the future values
forecast_values = forecast(model, n_forecast)

# Create a new time range for the forecasted values
forecast_dates = Date("2025-01-01"):Day(1):Date("2025-01-30")

# Combine the original and forecasted data
full_dates = vcat(timestamp, forecast_dates)
full_values = vcat(val, forecast_values)

# Plot combined data
plot(full_dates, full_values, label="Forecast with Observed Data", xlabel="Date", ylabel="Values", legend=:top, title="ARIMA Forecast")

# Save to a CSV file
using CSV, DataFrames
forecast_df = DataFrame(Date=full_dates, Value=full_values)
CSV.write("forecast_results.csv", forecast_df)
