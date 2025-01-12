
df <- read.csv("C:/Users/ashle/OneDrive/Documents/Copy of Book1(1).csv")
library(ggplot2)



# names of available columns
names(df)

# Fit the linear regression models
model_interbank <- lm(Lending.Rate ~ Interbank.Rate, data = df)
model_deposit <- lm(Lending.Rate ~ Deposit.Rates, data = df)
model_policy <- lm(Lending.Rate ~ Policy.Rates, data = df)

# Get the linear regression equations
print(summary(model_interbank))
print(summary(model_deposit))
print(summary(model_policy))


#Removing values with missing pairs (B220 and B221) and the column X
ddf <- na.omit(df)

# Visualize the relationship between Interbank.Rate and Lending.Rate
ggplot(df, aes(x = Interbank.Rate, y = Lending.Rate)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Interbank Rate", y = "Lending Rate", title = "Relationship between Interbank Rate and Lending Rate")

# Visualize the relationship between Deposit.Rates and Lending.Rate
ggplot(df, aes(x = Deposit.Rates, y = Lending.Rate)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Deposit Rates", y = "Lending Rate", title = "Relationship between Deposit Rates and Lending Rate")

# Visualize the relationship between Policy.Rates and Lending.Rate
ggplot(df, aes(x = Policy.Rates, y = Lending.Rate)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Policy Rates", y = "Lending Rate", title = "Relationship between Policy Rates and Lending Rate")

