# Given information
p <- 8000    # Loan amount
r <- 0.10    # Annual interest rate
t <- 3       # Time period (years)
k <- 3086.64 # Constant annual payment rate

# Calculate total payments
total_payments <- k * (1 - exp(-r*t)) / r





# Calculate  total amount paid in three years
total_interest_paid <- k * 3


#interest  paid during the three year period?
three_year_interest <- total_interest_paid - p


# Print the result
print(paste("The total interest paid during the 3-year period is:", round(three_year_interest, 2)))

