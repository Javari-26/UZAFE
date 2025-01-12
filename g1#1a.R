# Given information
P <- 8000  # Present value of the loan
r <- 0.10  # Annual interest rate
t <- 3     # Time to pay off the loan (in years)

# Calculate the payment rate 'k'
k <- P * r / (1 - exp(-r * t))

# Print the result
print(paste("The payment rate 'k' required to pay off the loan in three years is:", round(k, 2)))

