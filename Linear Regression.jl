using Random
using GLM

# Generate some dummy data
Random.seed!(1234)  # for reproducibility
n = 100  # number of data points
x = rand(1:100, n)
y = 2.5 .* x .+ 10 .+ randn(n) * 5  # y = 2.5x + 10 + noise

# Perform linear regression
model = lm(@formula(y ~ x), DataFrame(x=x, y=y))
coefficients = coef(model)
intercept = coefficients[1]
slope = coefficients[2]

# Print the results
println("Intercept: ", intercept)
println("Slope: ", slope)

