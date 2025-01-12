df <- read.csv("C:/Users/ashle/OneDrive/Documents/Copy of Book1(1).csv")





# Check for missing values
if (any(is.na(df))) {
  print("There are missing values in the data frame.")
  
  
#Listing the names of the columns  
names(df)
# Using the $ operator to delete a column
df$X <- NULL
  



  
  # Handle missing values (e.g., remove rows with missing values)
  df <- na.omit(df)
}

# Identify the numeric variables
numeric_vars <- sapply(df, is.numeric)

# Compute the correlation matrix using only the numeric variables
cor_matrix <- cor(df[, numeric_vars], use = "pairwise.complete.obs")

# Visualize the correlation matrix
corrplot(cor_matrix, method = "circle", type = "upper", order = "hclust", 
         tl.col = "red", tl.srt = 45, addCoef.col = "red", number.cex = 0.8)


