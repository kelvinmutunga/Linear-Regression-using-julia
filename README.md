# Exploratory Data Analysis with Julia

## Table of Contents
1. [Importing Libraries](#importing-libraries)
2. [Generating Dummy Data](#generating-dummy-data)
3. [Performing Linear Regression](#performing-linear-regression)
4. [Printing the Results](#printing-the-results)

---

## Importing Libraries <a name="importing-libraries"></a>

```julia
using Random
using GLM
```
---
## Generating Dummy Data <a name="generating-dummy-data"></a>

```julia
# Generate some dummy data
Random.seed!(1234)  # for reproducibility
n = 100  # number of data points
x = rand(1:100, n)
y = 2.5 .* x .+ 10 .+ randn(n) * 5  # y = 2.5x + 10 + noise
```
---
## Performing Linear Regression <a name="performing-linear-regression"></a>

```julia
# Perform linear regression
model = lm(@formula(y ~ x), DataFrame(x=x, y=y))
coefficients = coef(model)
intercept = coefficients[1]
slope = coefficients[2]
```
---
## Printing the Results <a name="printing-the-results"></a>

```julia
# Print the results
println("Intercept: ", intercept)
println("Slope: ", slope)
